# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/scripts:$PATH"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh


if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

alias c=clear
alias a=./a.out 
alias cl=clang 
alias cl+=clang++
alias e=exit
alias ff=fastfetch
alias uf=uwufetch
# alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias s='yay -Ss'
alias i='yay -S'
alias r='yay -Rns'
alias jc=javac
alias j=java
alias p3=python3

alias ls='eza --icons --color=always --group-directories-first'
alias ll='eza -l --icons --color=always --group-directories-first'
alias la='eza -la --icons --color=always --group-directories-first'
alias lla='eza -la --icons --color=always --group-directories-first'
alias lt='eza --tree --icons --color=always --group-directories-first'
alias lT='eza -T -L 2 --icons --color=always --group-directories-first'
alias lg='eza -la --git --icons --color=always --group-directories-first'
alias lsg='eza -l --git --icons --color=always --group-directories-first'



eval "$(zoxide init --cmd cd zsh)"
export PATH=$HOME/.local/bin:$PATH
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



export PATH=$PATH:/home/aryan/.spicetify
