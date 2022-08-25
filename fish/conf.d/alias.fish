if status is-interactive
    alias ls "ls -p"
    alias la "ls -A"
    alias ll "ls -l"
    alias lla "ll -A"
    alias g git
    alias groot "cd (git rev-parse --show-cdup)"
    alias sudo "sudo -s"
    command -qv nvim && alias vim nvim
    command -qv nvim && alias vi nvim

    if type -q exa
      alias ll "exa -l -g --icons"
      alias lla "ll -a"
    end
end
