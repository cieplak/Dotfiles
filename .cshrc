alias h   history 25
alias j   jobs -l
alias la  ls -aF
alias lf  ls -FA
alias ll  ls -lAF

set path = (/sbin /bin /usr/sbin /usr/bin /usr/local/sbin /usr/local/bin $HOME/bin $HOME/.local/bin)

setenv  LANG    en_US.UTF-8
setenv  TERM    screen-256color
setenv  EDITOR  vi
setenv  PAGER   less

if ($?prompt) then
# An interactive shell -- set some stuff up
  set prompt = "%N@%m:%~ %# "
  set promptchars = "%#"

  set filec
  set history = 100000
  set savehist = (100000 merge)
  set autolist = ambiguous
  # Use history to aid expansion
  set autoexpand
  set autorehash
  set mail = (/var/mail/$USER)
  if ( $?tcsh ) then
    bindkey "^W" backward-delete-word
    bindkey -k up history-search-backward
    bindkey -k down history-search-forward
  endif

endif
