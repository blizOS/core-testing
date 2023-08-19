# /bin/bash

repo-add blizos-testing.db.tar.gz *.pkg.tar.zst
echo "Removing Symlinks"
rm blizos-testing.db
rm blizos-testing.files
echo "Renaming files"
mv blizos-testing.db.tar.gz blizos-testing.db
mv blizos-testing.files.tar.gz blizos-testing.files
git add *
git commit -a -m "New update"

# Redo process because of signing
rm blizos-testing.db
rm blizos-testing.files

repo-add blizos-testing.db.tar.gz *.pkg.tar.zst
echo "Removing Symlinks"
rm blizos-testing.db
rm blizos-testing.files
echo "Renaming files"
mv blizos-testing.db.tar.gz blizos-testing.db
mv blizos-testing.files.tar.gz blizos-testing.files
git add *
git commit -a -m "New update"
git push
