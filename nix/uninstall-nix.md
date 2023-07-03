# If you need to remove nix (package-manager) follow these steps:

1: Stop and disable nix-daemons
```
sudo systemctl stop nix-daemon.socket
sudo systemctl stop nix-daemon.service
sudo systemctl disable nix-daemon.socket
sudo systemctl disable nix-daemon.service
sudo systemctl daemon-reload
```
===========================================

2: Next, remove nix related files
```
sudo rm -rf /etc/profile/nix.sh /etc/nix /nix ~root/.nix-profile ~root/.nix-defexpr ~root/.nix-channels ~/.nix-profile ~/.nix-defexpr ~/.nix-channels
```
===========================================

3: Edit the following files
```
- /etc/zshrc (Remove nix section)
- /etc/bashrc (Remove nix section)
```

- 3.1: Remove the corresponding zshrc and bashrc backup

===========================================

4: The nix files and related components should be removed

===========================================

5: If you would to reinstall nix, you can run the curl command for either multiple or single user
```
- Multiple: sh <(curl -L https://nixos.org/nix/install) --daemon
- Single: sh <(curl -L https://nixos.org/nix/install) --no-daemon
```
