{ config, pkgs, ... }:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;


  # Environment packages
  environment.systemPackages = with pkgs; [
     # nvim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
     wget
     firefox
     dmenu
     git
     i3status
     i3lock
     xterm
     alacritty
     google-chrome
  ];

 
  # User packages
  users.users.yannis = {
    packages = with pkgs; [
      tree
    ];
  };
}
