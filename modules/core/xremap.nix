{ inputs, ... }:
{
  imports = [
    inputs.xremap.nixosModules.default
  ];

  services.xremap = {
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
