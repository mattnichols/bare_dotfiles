## Installation


```
git clone git@github.com:mattnichols/bare_dotfiles.git .dotfiles
```

```
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

```
config config --local status.showUntrackedFiles no
```

```
echo ".dotfiles" >> .gitignore
```

Information about bare dotfile repos: https://www.atlassian.com/git/tutorials/dotfiles
