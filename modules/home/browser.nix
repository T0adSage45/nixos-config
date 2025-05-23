{ pkgs
, ...
}:
{
  programs.chromium = {
    enable = true;
    package = pkgs.brave;
    extensions = [
      { id = "dbepggeogbaibhgnhhndojpepiihcmeb"; } # VimiumC
      { id = "gppongmhjkpfnbhagpmjfkannfbllamg"; } # Wappalyzer
    ];
    commandLineArgs = [
      "--disable-features=WebRtcAllowInputVolumeAdjustment"
    ];
  };
}
