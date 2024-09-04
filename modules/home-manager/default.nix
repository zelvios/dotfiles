{
  userInfo,
  pkgs,
  ...
}: {
  imports = [
    ./apps
    ./terminal
  ];

  programs.man.generateCaches = true;

  home = {
    inherit (userInfo) username;
    homeDirectory = "/home/${userInfo.username}";

    packages = with pkgs; [
      gitui
      wget
      jq
      manix
      tlrc
      discord
      jetbrains.rust-rover
      jetbrains.rider
      jetbrains.webstorm
      android-studio
      cargo
    ];

    stateVersion = "24.05";
  };

  programs.home-manager.enable = true;

  # Nicely reload system units when changing configs.
  systemd.user.startServices = "sd-switch";
}
