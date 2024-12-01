{ 
  config,
  pkgs,
  ...
}:
{
  stylix.enable = true;
  stylix.image = ./wallpaper.jpg;
  stylix.polarity = "dark";

  
  stylix.fonts = {
    serif = {
      package = pkgs.jetbrains-mono;
      name = "JetBrains Mono";
    };

    sansSerif = {
      package = pkgs.jetbrains-mono;
      name = "JetBrains Mono";
    };

    monospace = {
      package = pkgs.jetbrains-mono;
      name = "JetBrains Mono";
    };

    emoji = {
      package = pkgs.jetbrains-mono;
      name = "JetBrains Mono";
    };
  };

  stylix.fonts.sizes = {
    applications = 12;
    terminal = 11;
    desktop = 10;
    popups = 10;
  };

  stylix.opacity = {
    applications = 1.0;
    terminal = 1.0;
    desktop = 1.0;
    popups = 1.0;
  };


  stylix.targets.i3 = { enable = true; };
  stylix.targets.kitty = { enable = true; };
}
