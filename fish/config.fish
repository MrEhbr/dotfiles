set fish_greeting

if status is-interactive
    # Theme configuration 
    _pure_set_default pure_show_prefix_root_prompt true
    _pure_set_default pure_show_system_time true
    _pure_set_default pure_separate_prompt_on_error true
    _pure_set_default pure_show_subsecond_command_duration true
    _pure_set_default pure_enable_single_line_prompt true
    set -g async_prompt_functions _pure_prompt_git
    # vscode integration
    if type -q code
        string match -q "$TERM_PROGRAM" vscode and . (code --locate-shell-integration-path fish)
    end
end
