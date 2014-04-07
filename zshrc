# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

#Sets default Editor
export EDITOR='vim'

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="steeef"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(osx python vi-mode git zshmarks history-substring-search)

source $ZSH/oh-my-zsh.sh

# Work to get bower working
alias bower='noglob bower'

# Pulls in aliases from separate file
source $HOME/.aliases


# Sets up Virtual Env wrapper
VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
source /usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME=~/Envs

#Adds support for UTF-8 via SSH (or maybe not, but fixes my issue with SSH).

export LC_ALL=en_US.utf-8 
export LANG="$LC_ALL"  

# Customize to your needs...
export PATH=$PATH:/Users/jubelhor/.rvm/gems/ruby-1.9.2-p320/bin:/Users/jubelhor/.rvm/gems/ruby-1.9.2-p320@global/bin:/Users/jubelhor/.rvm/rubies/ruby-1.9.2-p320/bin:/Users/jubelhor/.rvm/bin:/usr/local/bin:/Users/jubelhor/usr/local/bin:/usr/local/share/npm/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin

# Custom ls colors
# The value of this variable describes what color to use for which attribute
# when colors are enabled with CLICOLOR.  This string is a concatenation 
# of pairs of the format fb, where f is the foreground color and b is the
# background color.
#  
# The color designators are as follows:
#  
# a     black
# b     red
# c     green
# d     brown
# e     blue
# f     magenta
# g     cyan
# h     light grey
# A     bold black, usually shows up as dark grey
# B     bold red
# C     bold green
# D     bold brown, usually shows up as yellow
# E     bold blue
# F     bold magenta
# G     bold cyan
# H     bold light grey; looks like bright white
# x     default foreground or background
#  
# Note that the above are standard ANSI colors.  The actual display may differ
# depending on the color capabilities of the terminal in use.
#  
# The order of the attributes are as follows:
#  
# 1.   directory
# 2.   symbolic link
# 3.   socket
# 4.   pipe
# 5.   executable
# 6.   block special
# 7.   character special
# 8.   executable with setuid bit set
# 9.   executable with setgid bit set
# 10.  directory writable to others, with sticky bit
# 11.  directory writable to others, without sticky bit
#  
# The default is "exfxcxdxbxegedabagacad", i.e. blue foreground and default
# background for regular directories, black foreground and red background for
# setuid executables, etc.
export LSCOLORS=exfxcxdxbxegedabagacad

commit() {
  git commit -am "$*"
}


export PATH=/usr/local/bin:$PATH
