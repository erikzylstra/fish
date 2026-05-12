function powerstation --description 'Launch zellij + browsers for dev work'
    set -l teams "https://teams.microsoft.com/v2/"
    if type -q firefox
        nohup firefox --new-window $teams >/dev/null 2>&1 &
    end

    set -l url "http://localhost:3000"
    if type -q google-chrome-stable
        nohup google-chrome-stable --new-window $url >/dev/null 2>&1 &
    else if type -q google-chrome
        nohup google-chrome --new-window $url >/dev/null 2>&1 &
    else if type -q chromium
        nohup chromium --new-window $url >/dev/null 2>&1 &
    else
        nohup xdg-open $url >/dev/null 2>&1 &
    end

    outlook &>/dev/null &

    zellij --layout powerstation

end
