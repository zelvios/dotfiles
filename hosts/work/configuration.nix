{
  imports = [
    ./hardware-configuration.nix
    ./disko-config.nix
  ];

  desktop = {
    audio.pipewire.enable = true;
    environment.kde.enable = true;
    greeter = {
      sddm.enable = true;

      useWayland = false;
    };
  };

  nixpkgs.config.permittedInsecurePackages = [
    "electron-29.4.6"
  ];
}
