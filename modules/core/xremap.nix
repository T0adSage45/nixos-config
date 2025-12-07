{ inputs, ... }:
{
  imports = [
    inputs.xremap.nixosModules.default
  ];

  services.xremap = {
    enable = true;
    withHypr = true;

    config = {
      modmap = [
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
