export EDITOR=vim
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=agnoster

source $ZSH/oh-my-zsh.sh

eval $(keychain -q --agents ssh --eval ~/.ssh/*_id_ed25519)
eval $(keychain -q --agents ssh --eval ~/.ssh/*_id_rsa)

alias instance-wireguard="ssh ubuntu@204.216.221.127"
alias vim="nvim"
alias vi="nvim"
alias tesi="cd ~/unifi/master-thesis"
alias matlab="LD_LIBRARY_PATH=/home/riccardo/dev/MATLAB/R2023b/bin/glnxa64 /home/riccardo/dev/MATLAB/R2023b/bin/matlab"

export PATH="$PATH:/home/riccardo/dev/flutter/bin:/home/riccardo/dev/hugo"
export CHROME_EXECUTABLE="/sbin/chromium"
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/riccardo/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/riccardo/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/riccardo/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/riccardo/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

