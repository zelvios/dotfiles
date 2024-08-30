{
  lib,
  config,
  inputs,
  ...
}: {
  imports = [
    inputs.nixos-cosmic.nixosModules.default
  ];

  options.desktop.environment.cosmic.enable = lib.mkEnableOption "Enables the `COSMIC` desktop environment.";

  config = lib.mkIf config.desktop.environment.cosmic.enable {
    nix.settings = {
      substituters = ["https://cosmic.cachix.org/"];
      trusted-public-keys = ["cosmic.cachix.org-1:Dya9IyXD4xdBehWjrkPv6rtxpmMdRel02smYzA85dPE="];
    };

    services.desktopManager.cosmic.enable = true;
  };
}
