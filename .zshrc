# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/Documents/scripts:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/kris/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="sublime ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias m1tun="bash ~/Documents/scripts_kris/tun_mn1.sh"
#alias tmux='TERM=screen-256color tmux'
alias ll="ls -alh"
# Directory alias
alias sdir="cd ~/Projects/scripts_kris"
alias ddir="cd ~/Documents/dockers"
export PATH="/usr/local/opt/ncurses/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/ncurses/lib"
export CPPFLAGS="-I/usr/local/opt/ncurses/include"
export PATH=/usr/local/bin:$PATH
export TERM=screen-256color

#CMU alias 
alias sshtri='ssh puppala@TRINITY.vision.cs.cmu.edu' 
alias mnttri='sshfs -o defer_permissions puppala@TRINITY.vision.cs.cmu.edu:/ ~/mnt/trinity'
# Jupyter tunnel
alias tuntri='f(){ssh -N -f -L localhost:$1\:localhost:$1 puppala@TRINITY.vision.cs.cmu.edu};f'
alias tuntric='f(){ssh -N -f -L $1\:compute-0-$2.local\:$1 puppala@TRINITY.vision.cs.cmu.edu};f'
alias settri='~/Projects/scripts_kris/connect_tri.sh'
alias mdir='~/mnt/trinity/data/puppala/projects/MEVA'
alias redir='~/mnt/trinity/data2/puppala/projects/'
alias hrdir="~/mnt/trinity/data/puppala/courses"
alias hdir="/Users/kris/Projects/MSR"
alias adir='~/mnt/trinity/data2/puppala/projects/tracking/devalab'
alias trdir="~/Projects/trading"
alias zshsyn="~/Projects/scripts_kris/zshsyn.sh"


alias jp='f(){jupyter notebook --no-browser --port $1};f'

alias ll='ls -alh'
DISABLE_UNTRACKED_FILES_DIRTY='true'
alias rmgit='~/Projects/scripts_kris/git_remove_overhead.sh'


# Kubernetes aliases
# alias kjp='f(){kubectl create -f $1};f'
# alias kwat='watch -n1 kubectl get all'
# alias kcre='f(){kubectl create -f $1};f'
# alias kdelp='f(){kubectl delete pod $1};f'
# alias kexe='f(){kubectl exec -it playground-$1 zsh};f'
# alias kprt='f(){kubectl port-forward pod/playground-$1 543$1:543$1};f'
# alias mdir='/mnt/vol12/kris'
# alias cdir='~/Documents/cc'
# alias mnt12='sshfs -o defer_permissions GPCL-CPU010.l.pfidev.jp:/mnt/vol12/kris /mnt/vol12/kris'
# alias mnt01='sshfs -o defer_permissions GPCL-CPU010.l.pfidev.jp:/mnt/netapp_vol01/kris /mnt/netapp_vol01/kris'
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"



export PATH=/bin:$PATH
export PFKUBE_DOCKER_ALLOWED_RUNTIME_UID=2370
export PFKUBE_DEFAULT_DOCKER_REGISTRY=harbor.pfn.io/user-kris
export PATH=/bin:$PATH
export PFKUBE_DOCKER_ALLOWED_RUNTIME_UID=2370
export PATH="/usr/local/opt/openssl/bin:$PATH"


export LDFLAGS="${LDFLAGS} -L/usr/local/opt/openssl/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/openssl/lib/pkgconfig"


# For compilers to find zlib you may need to set:
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/zlib/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/zlib/include"

# For pkg-config to find zlib you may need to set:
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"




export VIRTUAL_ENV_DISABLE_PROMPT=true

export PATH="/usr/local/opt/tcl-tk/bin:$PATH"
#For compilers to find tcl-tk you may need to set:
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/tcl-tk/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/tcl-tk/include"

#For pkg-config to find tcl-tk you may need to set:
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/tcl-tk/lib/pkgconfig"




eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

source ~/.iterm2_shell_integration.zsh


