# Commands to run in interactive sessions
if status is-interactive
    # Disable greeting
    set -g fish_greeting

    # Fastfetch
    # fastfetch

    # Starship
    function starship_transient_prompt_func
        starship module character
    end

    if test "$TERM" != linux
        starship init fish | source

        if functions -q enable_transience
            enable_transience
        end
    end

    # Terminal colors from Quickshell
    if test -f ~/.local/state/quickshell/user/generated/terminal/sequences.txt
        cat ~/.local/state/quickshell/user/generated/terminal/sequences.txt
    end

    # Aliases
    alias c="printf '\033[2J\033[3J\033[1;1H'"
    alias a="./a.out"

    alias cl="clang"
    alias clpp="clang++"

    alias e="exit"
    alias ff="fastfetch"
    alias uf="uwufetch"

    alias s="yay -Ss"
    alias i="yay -S"
    alias r="yay -Rns"

    alias jc="javac"
    alias j="java"

    alias p3="python3"

    alias jdc="javac -cp /usr/share/java/mariadb-jdbc/mariadb-java-client.jar"
    alias jd="clear && java -cp .:/usr/share/java/mariadb-jdbc/mariadb-java-client.jar"

    # Eza
    alias ls="eza --icons --color=always --group-directories-first"
    alias ll="eza -l --icons --color=always --group-directories-first"
    alias lsa="eza -la --icons --color=always --group-directories-first"
    alias lla="eza -la --icons --color=always --group-directories-first"
    alias lt="eza --tree --icons --color=always --group-directories-first"
    alias lT="eza -T -L 2 --icons --color=always --group-directories-first"
    alias lg="eza -la --git --icons --color=always --group-directories-first"
    alias lsg="eza -l --git --icons --color=always --group-directories-first"

    # Kitty SSH integration
    if test "$TERM" = xterm-kitty
        alias ssh="kitten ssh"
    end

    # Zoxide
    zoxide init --cmd cd fish | source

    # PATH additions
    fish_add_path /home/aryan/.spicetify
end
