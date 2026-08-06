{
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    # Languages
    ## C
    gcc

    ## Steel
    steel
  ];
}
