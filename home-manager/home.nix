{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {

  imports = [

    # ./nvim.nix
      ./i3.nix
      ../programs/kitty.nix
      ../programs/stylix/stylix.nix
  ];

  nixpkgs = {
    # You can add overlays here

    overlays = [
      # If you want to use overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];

    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = _: true;
    };
  };

  # TODO: Set your username
  home = {
    username = "joao";
    homeDirectory = "/home/joao";
  };

  # Add stuff for your user as you see fit:
  # programs.neovim.enable = true;
  home.packages = with pkgs;
   [
       # user
       kitty
       microsoft-edge 
       telegram-desktop
       xfce.thunar
       stremio
       discord
       keepassxc
       eclipses.eclipse-java
       emacs
       inconsolata
       steam
                
       # archives
       zip
       xz
       unzip
       p7zip
     
       # utils
       eza # A modern replacement for ‘ls’
       fzf # A command-line fuzzy finder      
       feh
       dmenu
       htop

       # language
       clang
       llvm
       clang-tools

   ];



   programs.vscode = {
       enable = true;
       extensions = with pkgs.vscode-extensions; [
           dracula-theme.theme-dracula
           yzhang.markdown-all-in-one
     ];
   };
   
  # Enable home-manager and git
  programs.home-manager.enable = true;
  programs.git.enable = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "24.05";
}
