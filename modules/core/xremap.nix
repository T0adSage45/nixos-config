{ inputs, ... }:
{
  imports = [
    inputs.xremap.nixosModules.default
  ];

  services.xremap = {
    withHypr = true;
    withWayland = true;
    config = {
      keymap = [
        {
          name = "capesc";
          remap = {
            "CapsLock" = "Escape";
          };
        }
      ];
    };
  };
}
