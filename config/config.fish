if status is-interactive
    # Commands to run in interactive sessions can go here
    function fish_prompt
        set -l __last_command_exit_status $status
        set -l cyan (set_color -o cyan)
        set -l yellow (set_color -o yellow)
        set -l red (set_color -o red)
        set -l green (set_color -o green)
        set -l blue (set_color -o blue)
        set -l normal (set_color normal)
    
        set -l arrow_color "$green"
        if test $__last_command_exit_status != 0
            set arrow_color "$red"
        end
    
        set -l arrow "$arrow_color➜ "
        if fish_is_root_user
            set arrow "$arrow_color# "
        end
    
      set -l cwd $cyan(basename (prompt_pwd))
    
      echo -n -s $arrow ' '$cwd $normal ' '
    end

    function fish_right_prompt
        # set -g __fish_git_prompt_showdirtystate 1
        # set -g __fish_git_prompt_showuntrackedfiles 1
        set -g __fish_git_prompt_showupstream informative
        set -g __fish_git_prompt_showcolorhints 1
        set -g __fish_git_prompt_use_informative_chars 1
        # Unfortunately this only works if we have a sensible locale
        # string match -qi "*.utf-8" -- $LANG $LC_CTYPE $LC_ALL
        # and set -g __fish_git_prompt_char_dirtystate "!"
        # set -g __fish_git_prompt_char_untrackedfiles "?"
        #
        # The git prompt's default format is ' (%s)'.
        # We don't want the leading space.
        set -l vcs (fish_vcs_prompt '(%s)' 2>/dev/null)

        set -l d (set_color brgrey)(date "+%R")(set_color normal)

        set -l duration "$cmd_duration$CMD_DURATION"
        if test $duration -gt 100
            set duration (math $duration / 1000)s
        else
            set duration
        end

        set -q VIRTUAL_ENV_DISABLE_PROMPT
        or set -g VIRTUAL_ENV_DISABLE_PROMPT true
        set -q VIRTUAL_ENV
        and set -l venv (string replace -r '.*/' '' -- "$VIRTUAL_ENV")

        set_color normal
        string join " " -- $venv $duration $vcs $d
    end
end
source ~/.aliases

# opam configuration
source /Users/bsouthern/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
