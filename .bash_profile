if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

export BASH_SILENCE_DEPRECATION_WARNING=1
export PS1='\u@\h:\[\e[00;36m\]\w\[\e[0m\]\$ '
# export PS1='\u@\h:\[\e[01;32m\]\w\[\e[0m\]\$ '
# export PS1='\u@\h:\[\e[33m\]\w\[\e[0m\]\$ '
export EDITOR='nvim'
export CLICOLOR=1

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

[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

alias lxplus="sshpass -f ~/.ssh/pass_file_lxplus ssh ikrommyd@lxplus.cern.ch"
alias lxplus7="sshpass -f ~/.ssh/pass_file_lxplus ssh ikrommyd@lxplus7.cern.ch"
alias lxplus8="sshpass -f ~/.ssh/pass_file_lxplus ssh ikrommyd@lpxplus8.cern.ch"
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

alias sleepon="python ~/disablesleep.py off"
alias sleepoff="python ~/disablesleep.py on"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/iason/miniforge3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
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

if [ -f "/Users/iason/miniforge3/etc/profile.d/mamba.sh" ]; then
    . "/Users/iason/miniforge3/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<


# Created by `pipx` on 2023-11-23 18:25:26
export PATH="$PATH:/Users/iason/Library/Python/3.11/bin"

export MODULAR_HOME="/Users/iason/.modular"
export PATH="/Users/iason/.modular/pkg/packages.modular.com_mojo/bin:$PATH"

export X509_VOMS_DIR=~/.grid-security/vomsdir
alias proxy="voms-proxy-init --voms cms --valid 168:00  --vomses ~/.grid-security/vomses/"
alias dasgoclient="~/dasgoclient/dasgoclient_osx_aarch64"

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
. "$HOME/.cargo/env"
