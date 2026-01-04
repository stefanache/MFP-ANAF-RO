#!/bin/bash
# set -e

# clear

**1. Vercel:**
node --version        # trebuie v20.x
npm --version         # trebuie 10.x
vercel --version      # trebuie 50.x
vercel login          # te autentifica

**2. GitHub:**

git --version         # trebuie 2.x
gh --version          # trebuie 2.x
gh auth login         # te autentifica
gh auth status        # verifica daca e ok

**3. ERPNext:**
# Verifica containerele
cd ~/erpnext
docker compose ps     # toate trebuie sa fie "running"

# Verifica logs (asteapta 2-3 min la prima rulare)
docker compose logs -f frontend

# Acceseaza in browser
# http://localhost:8080

# Creaza site-ul (o singura data)
docker compose exec backend bench new-site erpnext.localhost --mariadb-root-password admin --admin-password admin

# Apoi refresh la http://localhost:8080
# Login: Administrator / admin
