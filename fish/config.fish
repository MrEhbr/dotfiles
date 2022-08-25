set fish_greeting

if status is-interactive
    # Theme configuration 
    _pure_set_default pure_show_prefix_root_prompt true
    _pure_set_default pure_show_system_time true
    _pure_set_default pure_separate_prompt_on_error true
    _pure_set_default pure_show_subsecond_command_duration true
    set -g async_prompt_functions _pure_prompt_git
end
