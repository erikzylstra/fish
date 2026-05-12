if status is-interactive

    if status is-login
        if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
            exec start-hyprland
        end
    end

    # Starship custom prompt
    starship init fish | source

    # Direnv + Zoxide
    command -v direnv &>/dev/null && direnv hook fish | source
    command -v zoxide &>/dev/null && zoxide init fish --cmd cd | source

    # Better ls
    alias ls='eza --icons --group-directories-first -1'

    # Abbrs
    abbr gd 'git diff'
    abbr gaa 'git add .'
    abbr ga 'git add'
    abbr gca 'git add . && git commit -m'
    abbr gc 'git commit -m'
    abbr gl 'git log --color --decorate --all'
    abbr glg 'git log --oneline --graph --decorate --all'
    abbr glp 'git log -p --color --decorate --all'
    abbr gln 'git log --name-only --decorate --all --color'
    abbr gs 'git status'
    abbr gsv 'git status -v'
    abbr gst 'git stash'
    abbr gsp 'git stash pop'
    abbr gp 'git push'
    abbr gpl 'git pull'
    abbr gsb 'git switch'
    abbr gsm 'git switch main'
    abbr gb 'git branch'
    abbr gbd 'git branch -d'
    abbr gco 'git checkout'
    abbr gsh 'git show'
    abbr gpd 'git pushdev'
    abbr gr 'git restore'
    abbr grs 'git restore --staged'
    abbr v nvim

    # Custom colours
    cat ~/.local/state/caelestia/sequences.txt 2>/dev/null

end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

pyenv init - fish | source
