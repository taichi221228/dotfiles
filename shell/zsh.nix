{
  programs = {
    zsh.enable = true;
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
  };
}
