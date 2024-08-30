{lib, ...}: {
  imports = [
    ./desktop
    ./virtualisation
    ./bootloader.nix
    ./btrfs.nix
    ./fonts.nix
    ./home-manager.nix
    ./language.nix
    ./network-manager.nix
    ./nh.nix
    ./nix.nix
    ./nvidia.nix
    ./user.nix
  ];

  btrfs.enable = lib.mkDefault true;
  network-manager.enable = lib.mkDefault true;
  home-manager.enable = lib.mkDefault true;
}
