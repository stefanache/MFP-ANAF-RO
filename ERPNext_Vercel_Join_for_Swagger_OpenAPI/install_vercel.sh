#!/bin/bash
set -e

echo "=========================================="
echo "  Vercel CLI Installation Script"
echo "  Ubuntu 24.04 LTS"
echo "=========================================="

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

MIN_NODE_VERSION=18

install_nodejs() {
    echo -e "${YELLOW}[1/3] Setting up Node.js...${NC}"

    NEED_INSTALL=false

    if command -v node &> /dev/null; then
        NODE_VERSION=$(node --version | tr -d 'v')
        NODE_MAJOR=$(echo $NODE_VERSION | cut -d. -f1)
        echo -e "${GREEN}Node.js found: v$NODE_VERSION${NC}"

        if [ "$NODE_MAJOR" -lt "$MIN_NODE_VERSION" ]; then
            echo -e "${YELLOW}Node.js version too old. Reinstalling...${NC}"
            NEED_INSTALL=true
        fi
    else
        echo -e "${YELLOW}Node.js not found. Installing...${NC}"
        NEED_INSTALL=true
    fi

    if [ "$NEED_INSTALL" = true ]; then
        sudo apt remove -y nodejs npm 2>/dev/null || true
        sudo apt autoremove -y 2>/dev/null || true
        sudo rm -rf /usr/local/lib/node_modules 2>/dev/null || true
        sudo rm -f /etc/apt/sources.list.d/nodesource.list 2>/dev/null || true

        sudo apt update
        sudo apt install -y ca-certificates curl gnupg
        sudo mkdir -p /etc/apt/keyrings
        curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg --yes
        echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
        sudo apt update
        sudo apt install -y nodejs

        echo -e "${GREEN}Node.js $(node --version) installed${NC}"
    fi
}

install_vercel() {
    echo -e "${YELLOW}[2/3] Setting up Vercel CLI...${NC}"

    if command -v vercel &> /dev/null; then
        echo -e "${GREEN}Vercel CLI found, updating...${NC}"
    else
        echo -e "${YELLOW}Installing Vercel CLI...${NC}"
    fi

    sudo npm uninstall -g vercel 2>/dev/null || true
    sudo npm install -g vercel@latest

    echo -e "${GREEN}Vercel CLI $(vercel --version | head -1) installed${NC}"
}

check_python() {
    echo -e "${YELLOW}[3/3] Checking Python...${NC}"

    if command -v python3 &> /dev/null; then
        echo -e "${GREEN}$(python3 --version) found${NC}"
    else
        sudo apt install -y python3 python3-pip python3-venv
    fi
}

sudo apt update
install_nodejs
install_vercel
check_python

echo ""
echo -e "${GREEN}Done! Run: vercel login${NC}"
