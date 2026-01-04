#!/bin/bash
set -e
clear

chmod +x *.sh

./getInstallments.sh
./install_vercel.sh
./install_github.sh
./install_erpnext.sh
./install_test.sh
./quicktest.sh
