if status is-interactive
    # Commands to run in interactive sessions can go here
    function fish_prompt
        if not set -q VIRTUAL_ENV_DISABLE_PROMPT
            set -g VIRTUAL_ENV_DISABLE_PROMPT true
        end
        set_color green --bold
        printf '%s' $USER
        set_color normal
        printf ' at '
    
        set_color magenta --bold
        echo -n (prompt_hostname)
        set_color normal
        printf ' in '
    
        set_color $fish_color_cwd --bold
        printf '%s' (prompt_pwd)
        set_color normal
    
        # Line 2
        echo
        if test -n "$VIRTUAL_ENV"
            printf "(%s) " (set_color blue)(basename $VIRTUAL_ENV)(set_color normal)
        end
        set_color cyan --bold
        printf '❯ '
        set_color normal
    end
end
