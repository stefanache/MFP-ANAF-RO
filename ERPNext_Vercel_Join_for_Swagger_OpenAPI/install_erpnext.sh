#!/bin/bash
set -e

echo "=========================================="
echo "  ERPNext Installation Script"
echo "  Ubuntu 24.04 LTS"
echo "=========================================="

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

check_docker() {
    echo -e "${YELLOW}[1/4] Checking Docker...${NC}"
    if command -v docker &> /dev/null; then
        echo -e "${GREEN}Docker found: $(docker --version)${NC}"
    else
        sudo apt remove -y docker docker-engine docker.io containerd runc 2>/dev/null || true
        sudo rm -f /etc/apt/sources.list.d/docker.list 2>/dev/null || true
        sudo rm -f /etc/apt/keyrings/docker.gpg 2>/dev/null || true

        sudo apt update
        sudo apt install -y ca-certificates curl gnupg
        sudo install -m 0755 -d /etc/apt/keyrings
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg --yes
        sudo chmod a+r /etc/apt/keyrings/docker.gpg
        echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
        sudo apt update
        sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
        sudo usermod -aG docker $USER
        echo -e "${GREEN}Docker installed${NC}"
    fi
}

check_docker_compose() {
    echo -e "${YELLOW}[2/4] Checking Docker Compose...${NC}"
    if docker compose version &> /dev/null; then
        echo -e "${GREEN}Docker Compose found${NC}"
    else
        echo -e "${RED}Docker Compose not found${NC}"
        exit 1
    fi
}

check_git() {
    echo -e "${YELLOW}[3/4] Checking Git...${NC}"
    if command -v git &> /dev/null; then
        echo -e "${GREEN}Git found${NC}"
    else
        sudo apt install -y git
    fi
}

setup_erpnext() {
    echo -e "${YELLOW}[4/4] Setting up ERPNext...${NC}"

    ERPNEXT_DIR="$HOME/erpnext"

    if [ -d "$ERPNEXT_DIR" ]; then
        echo -e "${YELLOW}ERPNext exists at $ERPNEXT_DIR${NC}"
        read -p "Remove and reinstall? (y/N): " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            cd "$ERPNEXT_DIR" 2>/dev/null && docker compose down 2>/dev/null || true
            rm -rf "$ERPNEXT_DIR"
        else
            return 0
        fi
    fi

    mkdir -p "$ERPNEXT_DIR"
    cd "$ERPNEXT_DIR"

    cat > docker-compose.yml << 'EOF'
version: "3.8"
services:
  backend:
    image: frappe/erpnext:v15
    restart: unless-stopped
    volumes:
      - sites:/home/frappe/frappe-bench/sites
      - logs:/home/frappe/frappe-bench/logs
  db:
    image: mariadb:10.6
    restart: unless-stopped
    command: ["--character-set-server=utf8mb4", "--collation-server=utf8mb4_unicode_ci", "--skip-character-set-client-handshake"]
    environment:
      MYSQL_ROOT_PASSWORD: admin
    volumes:
      - db-data:/var/lib/mysql
  redis-cache:
    image: redis:alpine
    restart: unless-stopped
  redis-queue:
    image: redis:alpine
    restart: unless-stopped
  frontend:
    image: frappe/erpnext:v15
    restart: unless-stopped
    command: nginx-entrypoint.sh
    environment:
      BACKEND: backend:8000
      FRAPPE_SITE_NAME_HEADER: erpnext.localhost
      SOCKETIO: websocket:9000
    volumes:
      - sites:/home/frappe/frappe-bench/sites
    ports:
      - "8080:8080"
  websocket:
    image: frappe/erpnext:v15
    restart: unless-stopped
    command: ["node", "/home/frappe/frappe-bench/apps/frappe/socketio.js"]
    volumes:
      - sites:/home/frappe/frappe-bench/sites
  queue-short:
    image: frappe/erpnext:v15
    restart: unless-stopped
    command: bench worker --queue short
    volumes:
      - sites:/home/frappe/frappe-bench/sites
  queue-long:
    image: frappe/erpnext:v15
    restart: unless-stopped
    command: bench worker --queue long
    volumes:
      - sites:/home/frappe/frappe-bench/sites
  scheduler:
    image: frappe/erpnext:v15
    restart: unless-stopped
    command: bench schedule
    volumes:
      - sites:/home/frappe/frappe-bench/sites
volumes:
  db-data:
  sites:
  logs:
EOF

    docker compose up -d

    echo -e "${GREEN}ERPNext starting at http://localhost:8080${NC}"
    echo ""
    echo "Create site:"
    echo "  cd $ERPNEXT_DIR"
    echo "  docker compose exec backend bench new-site erpnext.localhost --mariadb-root-password admin --admin-password admin"
}

sudo apt update
check_docker
check_docker_compose
check_git
setup_erpnext

echo -e "${GREEN}Done!${NC}"
