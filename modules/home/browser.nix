{
  inputs,
  pkgs,
  ...
}:
{
  home.packages = (with pkgs; [ inputs.zen-browser.packages."${system}".default ]);
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
