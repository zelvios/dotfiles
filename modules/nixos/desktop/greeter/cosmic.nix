{
  lib,
  config,
  inputs,
  ...
}: {
  imports = [
    inputs.nixos-cosmic.nixosModules.default
  ];

  options.desktop.greeter.cosmic.enable = lib.mkEnableOption "Enables the `COSMIC` greeter.";

  config = lib.mkIf config.desktop.greeter.cosmic.enable {
    services.displayManager.cosmic-greeter.enable = true;
  };
}
