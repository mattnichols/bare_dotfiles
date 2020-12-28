# Fish configuration

set fish_greeting           # Turns off the intro message when pulling up fish shell
set TERM "xterm-256color"   # Sets the terminal type
set EDITOR "vim"            # Sets $EDITOR to vim

fish_default_key_bindings
# fish_vi_key_bindings

################################################################################
# "es" Theme title
# https://github.com/oh-my-fish/theme-es/blob/master/fish_title.fish
################################################################################


# set SPACEFISH_RUBY_SYMBOL ""
# set SPACEFISH_RUBY_PREFIX "("
# set SPACEFISH_RUBY_SUFFIX ")"
# set SPACEFISH_DIR_PREFIX ""

function fish_title -d 'Use PROCESS $PWD format, replacing /Users/username with ~'
  set realhome ~
  if test "$_" != "fish"
    echo $_ ''
  else
    echo ''
  end
  string replace -r '^'"$realhome"'($|/)' '~$1' $PWD
end

################################################################################
# end title
################################################################################


################################################################################
# Bob the fish prompt settings
################################################################################

function __history_previous_command
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end

function __history_previous_command_arguments
  switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i '$'
  end
end

bind ! __history_previous_command
bind '$' __history_previous_command_arguments

## Functions ##

# Run the last command with sudo
function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end

function start_limelight
  killall limelight &> /dev/null
  limelight --config ~/.config/.limelight &> /dev/null &
end

## Abbreviations ##
abbr df 'df -h'
abbr free 'free -g'
abbr h 'cd ~/'
abbr c 'clear'
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr v 'vim'
abbr ll 'ls -l'
abbr la 'ls -A'
abbr lla 'ls -Al'
abbr ls. 'ls -A | egrep "^\."'
abbr merge 'xrdb -merge ~/.Xresources'
abbr q 'exit'
abbr d 'cd ~/Downloads'
abbr doc 'cd ~/Documents'
abbr grep 'grep --color=auto'
abbr egrep 'egrep --color=auto'
abbr fgrep 'fgrep --color=auto'
abbr cp 'cp -i'
abbr mv 'mv -i'
abbr rm 'rm -i'
abbr .c 'cd ~/.config'

abbr st 'atom'

abbr gs 'git status'
abbr gd 'git diff'
abbr gco 'git checkout'
abbr gb 'git branch'
abbr gnb 'git checkout -b'
abbr gp 'git pull'

abbr b 'bundle install'
abbr bu 'bundle update'
abbr bx 'bundle exec'
abbr c 'z'

alias ea="atom -n ~/.dotfiles ~/.zshrc"
alias ls='exa -la'
alias gradle='gw'
alias rm='trash'
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

set PATH "$HOME/bin:/usr/local/bin:$PATH"

# navi widget fish | source

# neofetch
#colorscript -e tiefighter1row
rvm default
pyenv init - | source

starship init fish | source
