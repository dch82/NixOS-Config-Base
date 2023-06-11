#
# system.nix
#
# Configure the system
#

{ pkgs, config, ... }:

{
  # TODO: Set your hostname
  networking.hostName = "your-hostname";

  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot/efi";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  system.stateVersion = "22.11";
}
