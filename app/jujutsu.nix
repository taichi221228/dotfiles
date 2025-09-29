{
  programs.git = {
    enable = true;
    ignores = [ ".jj" ];
  };
  programs.jujutsu = {
    enable = true;
    settings = {
      user = {
        name = "taichi221228";
        email = "taichi221228@icloud.com";
      };
    };
  };
}
