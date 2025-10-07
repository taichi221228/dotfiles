{
  programs = {
    bat.enable = true;
    eza.enable = true;
    fd.enable = true;
    fzf = {
      enable = true;
      enableZshIntegration = true;
      defaultCommand = "fd --type f --strip-cwd-prefix";
      fileWidgetCommand = "$FZF_DEFAULT_COMMAND";
    };
    ripgrep.enable = true;
    zoxide = {
      enable = true;
      enableZshIntegration = true;
    };
  };
}
