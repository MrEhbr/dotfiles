set fish_greeting
# Environment variables
set -gx EDITOR nvim
set -gx GOPATH $HOME/Projects/Go
set -gx GOBIN $GOPATH/bin
set -gx GOPRIVATE "github.com/MrEhbr/*"
set -U Z_OWNER (whoami)
fish_add_path -g /usr/local/bin $HOME/bin $GOBIN $GOROOT/bin
if status is-interactive
    # Theme configuration 
    _pure_set_default pure_show_prefix_root_prompt true
    _pure_set_default pure_show_system_time true
    _pure_set_default pure_separate_prompt_on_error true
    _pure_set_default pure_show_subsecond_command_duration true
    set -g async_prompt_functions _pure_prompt_git

    # aliases
    alias ls "ls -p"
    alias la "ls -A"
    alias ll "ls -l"
    alias lla "ll -A"
    alias g git
    alias sudo "sudo -s"
    command -qv nvim && alias vim nvim
    command -qv nvim && alias vi nvim

    if type -q exa
      alias ll "exa -l -g --icons"
      alias lla "ll -a"
    end
end
