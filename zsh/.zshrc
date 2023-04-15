# Enable colors
autoload -U colors && colors

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats "on %{$fg[yellow]%}%b%{$reset_color%}"

# Set up the prompt (with git branch name)
setopt prompt_subst
PROMPT='%F{012} %~%f ${vcs_info_msg_0_}
%F{002}%@ %U%D{%a}%u %D{%d %b}%f %F{015}%#%f '

# History in cache directory:
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit

setopt autocd extendedglob nomatch
unsetopt beep notify

# Aliases
alias a='~/.config/mescripts/a.sh'
alias c='~/.config/mescripts/a.sh'

alias alu='apt list --upgradable'
alias ud='sudo apt update'
alias ug='sudo apt upgrade -y'
alias sai='sudo apt install'
alias sau='sudo apt autoremove'
alias debin='sudo dpkg -i'
alias ni='nix-env -iA' # nix-env -iA nixpkgs.packagename # install
alias ne='nix-env -e'  # nix-env -e packagename # erase
alias nu='nix-env -u'  # Update All Packages
alias nl='nix-env -q'  # List All Packages

alias wifil='nmcli device wifi list'
alias wific='nmcli device wifi connect'

alias di='docker images'
alias dps='docker ps'
alias dpsa='docker ps -a'
alias db='docker build -t'
alias dr='docker run'
alias ds='docker start'
alias drm='docker rm'

alias gs='git status'
alias ga='git add .'
alias gm='git commit -m'
alias gma='git commit -a -m'
alias gps='git push'
alias gpl='git pull'

alias pof='systemctl poweroff'
alias rb='systemctl reboot'
alias hi='systemctl suspend'

alias ca='conda activate'
alias cacs='conda activate binacs2'
alias cda='conda deactivate'

alias py='python3'
alias jn='jupyter notebook'
alias pg='pgadmin4'

alias dox='cd ~/.dotdot/dox/Documents'
alias docacs='cd ~/Desktop/binery'
alias dot='cd ~/.dotdot'
alias dsk='cd ~/Desktop'
alias projacs='cd binery-core/packages/binery-acs'
alias sckls='cd ~/suckless'

alias f='lf'
alias vids='cd ~/Videos && lf'
alias dwn='cd ~/Downloads && lf'
alias fpy='cd ~/py4e/vdo && lf'

# Fix vi opening with proper colorscheme
alias nvi='~/.local/bin/squashfs-root/usr/bin/nvim -c "colorscheme habamax" -c "hi Normal guibg=#000000"' # add .local/bin instead of /bin
alias vi='nvim -c "colorscheme habamax" -c "hi Normal guibg=#000000"'
alias vit='nvim -c "colorscheme habamax" -c "hi Normal guibg=#000000" -c "Ex"'
alias virc='cd ~/.config/nvim && nvim -c "colorscheme habamax" -c "hi Normal guibg=#000000" -c "Ex"'
alias mpe='cd ~/.config/mpv && nvim -c "colorscheme habamax" -c "hi Normal guibg=#000000" -c "Ex"'
alias vibk='mv ~/.config/nvim ~/.config/nvimfinal'
alias viget='mv ~/.config/nvimfinal ~/.config/nvim'
alias viacs='cd ~/binery-core/packages/binery-acs && nvim -c "colorscheme habamax" -c "hi Normal guibg=#000000" .'
alias viz='nvim ~/.zshrc -c "colorscheme habamax" -c "hi Normal guibg=#000000"'
alias soz='source ~/.zshrc'
alias agenda='nvim ~/dox/0today.txt -c "colorscheme habamax" -c "hi Normal guibg=#000000"'
alias todo='nvim ~/dox/todo.txt -c "colorscheme habamax" -c "hi Normal guibg=#000000"'
alias setlap='nvim ~/.dotdot/.xtra/Desktop/setjob.txt -c "colorscheme habamax" -c "hi Normal guibg=#000000"'

alias lsa='ls -lah --color=auto --group-directories-first'
alias ls='ls -ah --color=auto --group-directories-first'
alias la='ls -lah --color=auto'

#alias ls='exa --icons'
alias dt='date +"%y%m%d"'
alias q='exit'

# alias lwf='flatpak run io.gitlab.librewolf-community & xdotool search --sync --onlyvisible --class "Librewolf" windowactivate key F11'
# alias lw='flatpak run io.gitlab.librewolf-community'

# export PATH="$PATH:/home/penguin/miniconda3/bin"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/p/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/p/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/p/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/p/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup

# To prevent conda from activating base
# conda config --set auto_activate_base false
# <<< conda initialize <<<

export PATH="$PATH:/usr/bin/Postman:/usr/pgadmin4/bin:$HOME/nvim/bin"

if [ -e /home/p/.nix-profile/etc/profile.d/nix.sh ]; then . /home/p/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
