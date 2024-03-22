{
  hostname,
  ...
}: {
  networking = {
    hostName = hostname;
    computerName = hostname;
  };
  system = {
    defaults = {
      smb.NetBIOSName = hostname;
    };
  };
}
