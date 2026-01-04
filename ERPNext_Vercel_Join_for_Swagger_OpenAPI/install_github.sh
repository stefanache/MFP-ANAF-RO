#!/bin/bash
set -e

echo "=========================================="
echo "  GitHub CLI & Runner Installation"
echo "  Ubuntu 24.04 LTS"
echo "=========================================="

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

RUNNER_VERSION="2.321.0"
RUNNER_DIR="$HOME/actions-runner"

install_git() {
    echo -e "${YELLOW}[1/3] Checking Git...${NC}"

    if command -v git &> /dev/null; then
        echo -e "${GREEN}$(git --version) found${NC}"
    else
        sudo apt update
        sudo apt install -y git
    fi
}

install_gh_cli() {
    echo -e "${YELLOW}[2/3] Setting up GitHub CLI...${NC}"

    if command -v gh &> /dev/null; then
        echo -e "${GREEN}GitHub CLI found${NC}"
    else
        sudo rm -f /etc/apt/sources.list.d/github-cli.list 2>/dev/null || true
        sudo rm -f /etc/apt/keyrings/githubcli-archive-keyring.gpg 2>/dev/null || true

        sudo apt update
        sudo apt install -y curl wget
        sudo mkdir -p -m 755 /etc/apt/keyrings
        wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null
        sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg
        echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
        sudo apt update
        sudo apt install -y gh
    fi

    echo -e "${GREEN}$(gh --version | head -1) ready${NC}"
}

setup_runner() {
    echo -e "${YELLOW}[3/3] Setting up GitHub Actions Runner...${NC}"

    if [ -d "$RUNNER_DIR" ] && [ -f "$RUNNER_DIR/.runner" ]; then
        echo -e "${GREEN}Runner already configured at $RUNNER_DIR${NC}"
        return 0
    fi

    rm -rf "$RUNNER_DIR" 2>/dev/null || true
    mkdir -p "$RUNNER_DIR"
    cd "$RUNNER_DIR"

    curl -o actions-runner-linux-x64-$RUNNER_VERSION.tar.gz -L \
        https://github.com/actions/runner/releases/download/v$RUNNER_VERSION/actions-runner-linux-x64-$RUNNER_VERSION.tar.gz

    tar xzf ./actions-runner-linux-x64-$RUNNER_VERSION.tar.gz
    rm -f ./actions-runner-linux-x64-$RUNNER_VERSION.tar.gz

    echo -e "${GREEN}Runner downloaded to $RUNNER_DIR${NC}"
    echo ""
    echo "To configure:"
    echo "  cd $RUNNER_DIR"
    echo "  ./config.sh --url https://github.com/USER/REPO --token TOKEN"
    echo "  ./run.sh"
}

sudo apt update
install_git
install_gh_cli
setup_runner

echo ""
echo -e "${GREEN}Done! Run: gh auth login${NC}"
