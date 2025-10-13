set fish_greeting ""

set -gx TERM xterm-256color

# theme
set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes
set -g theme_display_user yes
set -g theme_display_hostname yes
set -g theme_color_scheme terminal-dark
set -g theme_show_exit_status yes
set -g theme_display_git_default_branch yes
set -g fish_prompt_pwd_dir_length 1
set -g theme_hide_hostname no
set -g theme_hostname always
set -g theme_display_date yes
set -g theme_date_format "+%Y/%m/%d %H:%M:%S"

# aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias g git
alias t "tmux"
alias tk "tmux kill-server"
alias cdd "cd ~/Documents/develop"
alias vi "nvim"
alias vifish "nvim ~/.config/fish/config.fish"
alias sfish "source ~/.config/fish/config.fish"

#Color
export LSCOLORS=hxfxcxdxbxegedabagacad

#Path
set -x PATH /opt/homebrew/bin $PATH
set -x JAVA_HOME (/usr/libexec/java_home -v "21")
set -x PATH $JAVA_HOME $PATH

#Node
eval "$(nodenv init -)"

# set -x PATH $HOME/.nodebrew/current/bin $PATH
# set -x PYENV_ROOT $HOME/.pyenv
# set -x PATH  $PYENV_ROOT/bin $PATH
# pyenv init - | source

# pnpm
set -gx PNPM_HOME "/Users/ngnmsn/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
