---
title: Git workflow
layout: default
modified: 24.1.2012
---

## New project

<pre>
cd project_dir
git init
echo "My new project" > readme.txt
git add .
git commit -m "first commit"
</pre>


## Working with existing project

Get repository from remote location

<pre>
git clone https://github.com/spree/spree.git my_spree #my_spree target folder is optional
cd my_spree
</pre>

### Simple workflow with remote repository

* Get changes from remote repository with <code>git pull</code>
* Send changes to remote repository with <code>git push</code>

Inside the cloned project directory 

<pre>
# edit some files
git add .
git commit -m "Fix the foo for the bar"
git pull #get the latest changes in repository before pushing
git push
</pre>

### Smart workflow with remote repository

[Good instructions](http://longair.net/blog/2009/04/16/git-fetch-and-merge/)

To get changes from remote repository

<pre>
git fetch
git diff origin/master
git merge origin/master
</pre>

When starting work with a new issue

<pre>
git checkout -b issue123
</pre>

If you need to work on another issue for a while. First commit all pending changes or stash them.

<pre>
git checkout master
git checkout -b hotfix
</pre>

Edit some files

<pre>
git commit
git checkout master
</pre>

Get changes to master with git fetch & merge

<pre>
git merge hotfix
</pre>

If you are done with the hotfix, it can be deleted with

<pre>
git branch -d hotfix
</pre>

Back to the issue branch

<pre>
git checkout issue123
</pre>

You may want to merge hotfix to the issue branch

<pre>
git merge master
</pre>

When finished with the issue, commit changes and

<pre>
git checkout master
</pre>

Again get changes to master with git fetch & merge

<pre>
git merge issue123
</pre>

