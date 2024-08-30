{
  imports = [
    ./hardware-configuration.nix
    ./disko-config.nix
  ];

  desktop = {
    audio.pipewire.enable = true;
    environment.cosmic.enable = true;
    greeter.cosmic.enable = true;
  };

  nixpkgs.config.permittedInsecurePackages = [
    "electron-29.4.6"
  ];
}
