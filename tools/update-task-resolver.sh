#!/bin/bash
#
# Go to the main_repo_path, pull changes, update submodules and commit new
# changes to the remote origin.
#

main_repo_path=<absolute-path-to-main-repo>

cd $main_repo_path

git pull
git submodules update --remote --merge
git add .
git commit message -m "Update submodules"
git push
