if status is-interactive
    if not fish_is_root_user
        if not set -q TMUX
            tmux new-session -A -s main
        end
    end
end