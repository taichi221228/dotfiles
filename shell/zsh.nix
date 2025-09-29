{
  programs = {
    zsh.enable = true;
    bat.enable = true;
    starship = {
      enable = true;
      enableZshIntegration = true;
      # For Alacritty. Alacritty can't display `☁️` using Apple Color Emoji.
      settings = {
        aws.symbol = "⛅  ";
        gcloud.symbol = "🌧️  ";
        openstack.symbol = "🌨️  ";
        os.symbols.OpenCloudOS = "🌩️  ";
      };
    };
    zellij = {
      enable = true;
      enableZshIntegration = true;
    };
    zoxide = {
      enable = true;
      enableZshIntegration = true;
    };
  };
}
