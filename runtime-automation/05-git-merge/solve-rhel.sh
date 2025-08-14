#!/bin/sh
cd /home/my-repo #changes the working directory to your Git repository
git checkout main #moves back into the main branch
git merge experimental_change #pulls changes from experimental_change into main
git branch -d experimental_change
echo "Solved module called 05-git-merge" >> /tmp/progress.log