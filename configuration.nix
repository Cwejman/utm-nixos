{ config, pkgs, ... }:

{
  imports = [];

  system.stateVersion = "24.05";

  networking.hostName = "utm-nixos";
  networking.interfaces.enp0s3.useDHCP = true;

  services.openssh.enable = true;
  networking.firewall.allowedTCPPorts = [ 22 ];

  users.users.jona = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    password = "$6$5qWVEEbOQ7engTEA$4n129cCihC38xIYerCEf6dMV7sXXWTxl1xgt.KgDNinrYtSo.jD/l5SRrk3H8d0raqPYA9mMCG2IxHjJ8YQ2j0";
  };

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
}
