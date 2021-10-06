# Dotfiles

Here described how to track your dotfiles.

This is taken partially from https://www.atlassian.com/git/tutorials/dotfiles .
I simply moved it here in case ``Atlassian`` should stop existing at any point
in time. 


## Quick Install

This will call the script that automatically installs the
dot files on a new system.

```bash

```

## TL;DR

We store a Git bare repository in a "side" folder (like $HOME/.cfg or
$HOME/.myconfig) using an alias so that commands are run against that repository
and not the usual ``.git`` local folder.

```bash
git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
```

Line-by-Line

1. The first line creates a folder ~/.cfg which is a Git bare repository that
   will track our files. 
2. Then we create an alias config which we will use
   instead of the regular git when we want to interact with our configuration
   repository. 
3. We set a flag - local to the repository - to hide files we are
   not explicitly tracking yet. This is so that when you type config status and
   other commands later, files you are not interested in tracking will not show up
   as untracked. 
4. Also you can add the alias definition by hand to your .bashrc
   or use the the fourth line provided for convenience.


Then just use the `config` command as per usual:

```bash
config status
config add .vimrc
config commit -m "Add vimrc"
config add .bashrc
config commit -m "Add bashrc"
config push
```

Make sure you also add a `.gitignore` that contains `.cfg` so that you don't
have any recursion problems. Move the stuff to a new server:

```bash
git clone --bare <git-repo-url> $HOME/.cfg
```

Define the alias manually (only needs to be done once since the alias is 
in the dotfiles...)

```bash
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

Then checkout the content:

```bash
config checkout
```


This may fail if you have to overwrite files. Create backup of those files
like so

```bash
mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
```

```bash
config checkout
```

You will have to set the showuntracked files no again:

```bash
config config --local status.showUntrackedFiles no
```


As a script

```
git clone --bare git@github.com:lsawade/dotfiles.git $HOME/.cfg
function config {
    /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
echo "Checked out config.";
else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no
```


