{
  programs.git = {
    enable = true;
    settings = {
      user = {
        email = "puchi.maru.milk@gmail.com";
        name = "pipopo";
      };
      init.defaultBranch = "main";
    };
  };

  programs.gh = {
    enable = true;
  };
}
