```bash
git clone https://github.com/Cwejman/utm-nixos.git .
nix-shell -p nixVersions.stable
sudo -i
cd /home/nixos
export NIX_CONFIG="experimental-features = nix-command flakes"
sudo nix run --extra-experimental-features 'nix-command flakes' github:nix-community/disko -- --mode disko+mount --flake .#utm-nixos
nixos-install --flake .#utm-nixos
```
