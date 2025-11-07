{ inputs, ... }:
{
  imports = [
    inputs.xremap.nixosModules.default
  ];

  services.xremap = {
    enable = true;
    withHypr = true;
    config = {
      keymap = [
        {
          name = "capesc";
          remap = {
            "CapsLock" = "Esc";
          };
        }
      ];
    };
  };
}
