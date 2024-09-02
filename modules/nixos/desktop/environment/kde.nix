{
  lib,
  config,
  ...
}: {
  options.desktop.environment.kde.enable = lib.mkEnableOption "Enables the `Plasma` desktop environment.";

  config = lib.mkIf config.desktop.environment.kde.enable {
    services.xserver.desktopManager.plasma5.enable = true;
  };
}
