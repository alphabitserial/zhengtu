default:
    just install

install:
    mkdir -p ~/.zhengtu ~/.zhengtu/bin ~/.zhengtu/zig ~/.zhengtu/zls
    cp zhengtu ~/.zhengtu/bin/zhengtu
    chmod +x ~/.zhengtu/bin/zhengtu
    mkdir -p ~/.config/systemd/user
    cp zhengtu.service ~/.config/systemd/user/
    cp zhengtu.timer ~/.config/systemd/user/
    systemctl --user daemon-reload
    systemctl --user enable --now zhengtu.timer
    echo "Zhēngtú installed successfully!"
    ~/.zhengtu/bin/zhengtu

uninstall:
    rm -rf ~/.zhengtu
    systemctl --user disable --now zhengtu.timer
    rm ~/.config/systemd/user/zhengtu.service ~/.config/systemd/user/zhengtu.timer
    systemctl --user daemon-reload
    echo "Zhēngtú uninstalled successfully!"
