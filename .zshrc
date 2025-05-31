# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

br() {
  if [[ -z $1 ]]; then
    echo "usage: br [brightness as promiles] - change brightness"
  else
    brightnessctl s $[ 100 * $1]
  fi
}

ccp() {
  if [[ -z $1 ]]; then
    echo "usage: ccp -i [file_path] - copy file content to clipboard
    ccp -o [file_path] - paste clipboard content as file
    cpp -oa [file_path] - append clipboard content to file"
  else
    case $1 in
    -i)
      wl-copy < $2
      ;;
    -o)
      wl-paste > $2
      ;;
    -oa)
      wl-paste >> $2
      ;;
    esac
  fi
}
