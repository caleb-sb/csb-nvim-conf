#!/bin/bash

config_repo="csb-nvim-conf"

echo "Pulling..."
git up

echo "Committing current changes"
git add --all
git commit -m "$1"

echo "Pushing..."
git push origin main

echo "Going to run makepkg now..."
cd /home/caleb/personal/pkgbuild/"$config_repo"/
makepkg -f
echo "Cleaning up"
rm -rf csb-nvim-conf pkg src

echo "Going to update the arco_config repo..."
cd /home/caleb/personal/arco_config/
mv /home/caleb/personal/pkgbuild/"$config_repo"/*.pkg.tar.zst ./x86_64/

sh git-update-repo.sh


