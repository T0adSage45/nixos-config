{
  inputs,
  pkgs,
  ...
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
  home.packages = (with pkgs; [ inputs.zen-browser.packages."${system}".default ]);
}
