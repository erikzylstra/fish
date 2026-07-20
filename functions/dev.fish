function dev --description 'Launch zellij for dev work'
    argparse o/opencode -- $argv
    or return

    if set -q _flag_opencode
        set -x DEV_AGENT opencode
    else
        set -x DEV_AGENT claude
    end

    zellij --layout dev
end
