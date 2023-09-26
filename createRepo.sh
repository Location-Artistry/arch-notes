#!/bin/bash
#
# chmod u+x
# ./ createRepo.sh
#
echo "# arch-notes" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/Location-Artistry/arch-notes.git
git push -u origin main
