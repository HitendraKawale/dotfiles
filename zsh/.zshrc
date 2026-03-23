# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/hitesh/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/hitesh/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/hitesh/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/hitesh/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

eval "$(oh-my-posh init zsh --config 'star')"

export EDITOR=nvim
export VISUAL="$EDITOR"
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
