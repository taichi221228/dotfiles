{
  programs.git = {
    enable = true;
    # Ignore the Jujutsu repository
    ignores = [ ".jj" ];
  };
}
