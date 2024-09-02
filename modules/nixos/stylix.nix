{
  inputs,
  pkgs,
  ...
}:
{
  imports = [
    inputs.stylix.nixosModules.stylix
  ];

  stylix = {
    enable = true;

    image = ../../wallpaper.png;
  
    polarity = "dark"; # Force dark scheme

    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml"; # Set global scheme

    targets.grub.useImage = true;
  };
}
