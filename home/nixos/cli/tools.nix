{ pkgs, ... }: {
  home.packages = with pkgs; [
    cava
    ollama-cuda
    wiremix
  ];
}
