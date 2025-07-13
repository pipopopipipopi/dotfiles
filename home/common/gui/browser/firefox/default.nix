{
  programs.firefox = {
    enable = true;
    policies = {
      AppAutoUpdate = false;
      DisableTelemetry = false;
    };
  };
}
