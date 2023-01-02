#!/bin/bash

config_repo="csb-nvim-conf"

echo "Pulling..."
git up

echo "Committing current changes"
git add --all
git commit -m "$1"

echo "Pushing..."
git push --tags origin main

sh make-pkg.sh

echo "Going to update the arco_config repo..."
cd /home/caleb/personal/arco_config/
mv /home/caleb/personal/"$config_repo"/*.pkg.tar.zst ./x86_64/

sh git-update-repo.sh


