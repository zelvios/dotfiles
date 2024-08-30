{lib, ...}: {
  imports = [
    ./docker.nix
  ];

  docker.enable = lib.mkDefault true;
}
