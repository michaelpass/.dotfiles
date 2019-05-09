# michaelpass.zsh-theme

# Note: local variables are used to compute text. External variables are
# used by ZSH routines to draw terminal.

# ------------------------ Text Computation -----------------------------

# # User/directory prompt information - Deprecacted
# local user='%{$fg[green]%}%n%{$fg_bold[white]%}@%{$fg_bold[yellow]%}%m%{$reset_color%}'
# local pwd='%{$fg_bold[blue]%}%~%{$reset_color%}'

# Ruby version manager
local rvm=''
if which rvm-prompt &> /dev/null; then
  rvm='%{$fg[green]%}‹$(rvm-prompt i v g)›%{$reset_color%}'
else
  if which rbenv &> /dev/null; then
    rvm='%{$fg[green]%}‹$(rbenv version | sed -e "s/ (set.*$//")›%{$reset_color%}'
  fi
fi

#Program return codes
local return_code='%(?..%{$fg[red]%}%?↵%{$reset_color%})'
local git_branch='$(git_prompt_status)%{$reset_color%}$(git_prompt_info)%{$reset_color%}'
local vim_status='$(vi_mode_prompt_info)'
local git_hash='%b%{$fg[green]%}$(git_prompt_short_sha)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}✚ "
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%}✹ "
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖ "
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%}➜ "
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%}═ "
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%}✭ "

# ------------------------ Text Display -----------------------------------
# Old version
#PROMPT="${user}:${pwd}$ "
#RPROMPT="${return_code} ${git_branch} ${rvm}"

# TODO - Clean up prompt with ${user} and ${pwd}

# New version
PROMPT="
%{$reset_color%}%{$FG[075]%}%n%{$fg_bold[white]%}@%{$FG[078]%}%m%{$fg_bold[white]%}:%{$FG[227]%}%~ %{$git_hash%} 
%{$FG[248]%}%D{%L:%M}%{$FG[248]%}%D{%p} %{$FG[105]%}%(!.#.»)%{$reset_color%} "

RPROMPT="${return_code} ${git_branch}${rvm}${vim_status}"

