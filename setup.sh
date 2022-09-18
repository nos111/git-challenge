#pull all branches
git branch -r | grep -v '\->' | sed "s,\x1B\[[0-9;]*[a-zA-Z],,g" | while read remote; do git branch --track "${remote#origin/}" "$remote"; done
git fetch --all
git pull --all

#setup challenge 01
git checkout challenge01
git checkout setup src/
git restore --staged src/

#setup challenge05
git checkout challenge05
git reset --hard HEAD~1

#return to master branch
git checkout master