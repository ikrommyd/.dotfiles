# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
# ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)

source $ZSH/oh-my-zsh.sh
unsetopt inc_append_history
unsetopt share_history

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export EDITOR='nvim'

alias lxplus="sshpass -f ~/.ssh/pass_file_lxplus ssh ikrommyd@lxplus.cern.ch"
alias lxplus7="sshpass -f ~/.ssh/pass_file_lxplus ssh ikrommyd@lxplus7.cern.ch"
alias lxplus8="sshpass -f ~/.ssh/pass_file_lxplus ssh ikrommyd@lxplus8.cern.ch"
alias lxplus9="sshpass -f ~/.ssh/pass_file_lxplus ssh ikrommyd@lxplus9.cern.ch"
alias lxplusgpu="sshpass -f ~/.ssh/pass_file_lxplus ssh ikrommyd@lxplus-gpu.cern.ch"
alias lxplusgpu8="sshpass -f ~/.ssh/pass_file_lxplus ssh ikrommyd@lxplus8-gpu.cern.ch"
alias kinitlpc="kinit --password-file=/Users/iason/.ssh/pass_file_lpc ikrommyd@FNAL.GOV"
alias cmslpcsl7="ssh -Y ikrommyd@cmslpc-sl7.fnal.gov"
alias cmslpcel8="ssh -Y ikrommyd@cmslpc-el8.fnal.gov"
alias cmslpcel9="ssh -Y ikrommyd@cmslpc-el9.fnal.gov"
alias cmslpcgpu1="ssh -Y ikrommyd@cmslpcgpu1.fnal.gov"
alias cmslpcgpu2="ssh -Y ikrommyd@cmslpcgpu2.fnal.gov"
alias cmslpcgpu3="ssh -Y ikrommyd@cmslpcgpu3.fnal.gov"

alias ma="mamba activate"
alias deac="mamba deactivate"

alias sleepoff="python ~/disablesleep.py on"
alias sleepon="python ~/disablesleep.py off"

# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Created by `pipx` on 2022-11-16 21:16:37
export PATH="$PATH:/Users/iason/.local/bin"
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"
export PATH="$PATH:/Library/TeX/texbin"
export PATH="$PATH:/usr/local/bin:"
export PATH="$PATH:/Users/iason/bin"

export GOPATH=$HOME/.go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

export X509_VOMS_DIR=~/.grid-security/vomsdir
alias proxy="voms-proxy-init --voms cms --valid 168:00  --vomses ~/.grid-security/vomses/"


[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh


export MODULAR_HOME="/Users/iason/.modular"
export PATH="/Users/iason/.modular/pkg/packages.modular.com_mojo/bin:$PATH"

# c.f.Richard McElreath's 2024-01-26 tweet
# https://twitter.com/rlmcelreath/status/1750807826883027304/
function bibtex-from-doi () {
    # Examples:
    # bibtex-from-doi 10.21105/joss.02823
    # bibtex-from-doi https://doi.org/10.21105/joss.02823
    local doi
    doi="${1}"
    if [ -z "${doi}" ]; then
        echo "Please provide a DOI of the form 10.prefix/suffix"
        return 1
    fi
    # check if the doi is actually a url and if so strip of the url part
    if [[ "${doi}" == "https://doi.org/"* ]]; then
        doi="${doi:16}"
    fi
    curl --location --header "Accept: application/x-bibtex" "https://doi.org/${doi}"
}


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
bindkey "${key[Up]}" fzf-history-widget

bindkey -s ^f "tmux-sessionizer\n"
bindkey -s ^b "tmux-windowizer\n"
alias ta="tmux a -t"

fcd() {
    local selected=$(find ~/work/ ~/fun/ ~/Dropbox/ -mindepth 1 -maxdepth 2 -type d | fzf)

    if [[ -n $selected ]]; then
        cd "$selected" || return
    fi
}

export GPG_TTY=$(tty)
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"

eval $(thefuck --alias)

alias thisroot="source ~/software/root/root_install/bin/thisroot.sh"
alias source-util-linux='export PATH="/opt/homebrew/opt/util-linux/bin:$PATH"; export PATH="/opt/homebrew/opt/util-linux/sbin:$PATH"'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/iason/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/iason/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/iason/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/iason/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba shell init' !!
export MAMBA_EXE='/Users/iason/miniforge3/condabin/mamba';
export MAMBA_ROOT_PREFIX='/Users/iason/miniforge3';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias mamba="$MAMBA_EXE"  # Fallback on help from mamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<
export PATH="/Users/iason/.pixi/bin:$PATH"

export PATH="$PATH:/Users/iason/.modular/bin"
eval "$(magic completion --shell zsh)"
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/iason/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

export PATH="$PATH:/opt/nvim-macos-arm64/bin"

nvim-scylet() {
  env NVIM_APPNAME=nvim-scylet /opt/nvim-macos-arm64/bin/nvim "$@"
}
nvim-lazy() {
  env NVIM_APPNAME=nvim-lazy /opt/nvim-macos-arm64/bin/nvim "$@"
}

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --highlight-line \
  --info=inline-right \
  --ansi \
  --border=none \
  --color=bg+:#283457 \
  --color=bg:#16161e \
  --color=border:#27a1b9 \
  --color=fg:#c0caf5 \
  --color=gutter:#16161e \
  --color=header:#ff9e64 \
  --color=hl+:#2ac3de \
  --color=hl:#2ac3de \
  --color=info:#545c7e \
  --color=marker:#ff007c \
  --color=pointer:#ff007c \
  --color=prompt:#2ac3de \
  --color=query:#c0caf5:regular \
  --color=scrollbar:#27a1b9 \
  --color=separator:#ff9e64 \
  --color=spinner:#ff007c \
"
