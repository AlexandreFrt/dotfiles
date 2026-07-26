function clean
    paccache -r
    paccache -ruk0

    set -l orphans (pacman -Qdtq 2>/dev/null)
    if test (count $orphans) -gt 0
        sudo pacman -Rns $orphans
    end

    rm -rf ~/.cache/*
    sudo journalctl --vacuum-time=7d
end
