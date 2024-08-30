{
  userInfo,
  pkgs,
  ...
}: {
  programs.zsh.enable = true;

  users.users.${userInfo.username} = {
    isNormalUser = true;
    description = userInfo.fullName;
    hashedPassword = "$6$rounds=16384$UMsalt12$OCiHQDrNTPAWcC60QLLaTRh7C/tU40WMAMCGhJG4JzU.fNLudnMH6sBiwZZJ7yq6/3h9Lee5VqPoWFlwNvr8p.";

    extraGroups = ["wheel" "networkmanager"];
    shell = pkgs.zsh;
  };
}
