```bash
nix-shell -p nixVersions.stable
sudo -i
cd /home/nixos
export NIX_CONFIG="experimental-features = nix-command flakes"
sudo nix run --extra-experimental-features 'nix-command flakes' github:nix-community/disko -- --mode disko --flake .#utm-nixos
nixos-install --flake .#utm-nixos
```
