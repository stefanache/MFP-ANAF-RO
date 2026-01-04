#!/bin/bash
# set -e
# clear
echo "=== TEST INSTALARE ==="
echo "Node: $(node --version 2>/dev/null || echo 'LIPSA')"
echo "npm: $(npm --version 2>/dev/null || echo 'LIPSA')"
echo "Vercel: $(vercel --version 2>/dev/null | head -1 || echo 'LIPSA')"
echo "Git: $(git --version 2>/dev/null || echo 'LIPSA')"
echo "gh: $(gh --version 2>/dev/null | head -1 || echo 'LIPSA')"
echo "Docker: $(docker --version 2>/dev/null || echo 'LIPSA')"
echo "ERPNext containers: $(docker compose -f ~/erpnext/docker-compose.yml ps -q 2>/dev/null | wc -l || echo '0')"
