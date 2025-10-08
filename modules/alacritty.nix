{ config, pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
    settings = {
      font.size = 12.0;
      window.opacity = 0.9;
      window.decorations = "full";
    };
  };
}
