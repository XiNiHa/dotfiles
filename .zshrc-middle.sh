zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

zinit for \
  atclone"
      ./starship init zsh > init.zsh
      ./starship completions zsh > _starship" \
  from"gh-r" nocompile sbin src"init.zsh" \
  starship/starship

ZSH_AUTOSUGGEST_USE_ASYNC=1
zinit ice silent wait'1' atload'_zsh_autosuggest_start'
zinit light zsh-users/zsh-history-substring-search
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma-continuum/fast-syntax-highlighting
zinit light zdharma-continuum/history-search-multi-word
zinit light zsh-users/zsh-completions

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word
