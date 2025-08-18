{
  device ? throw "Set this to the disk device, e.g. /dev/sda",
  ...
}:
{
  disko.devices.disk.primary = {
    inherit device;
    type = "disk";
    content = {
      type = "gpt"; # GPT partitioning scheme
      partitions = {
        # EFI Partition
        ESP = {
          size = "512M";
          type = "EF00";
          content = {
            type = "filesystem";
            format = "vfat";
            mountpoint = "/boot";
            mountOptions = [
              "defaults"
              "umask=0077"
            ];
          };
        };

        # Swap Partition
        swap = {
          size = "8G";
          type = "8200";
          content = {
            type = "swap";
          };
        };

        # Btrfs Root Partition (no subvolumes)
        root = {
          size = "100%"; # Use remaining space
          type = "8300";
          content = {
            type = "filesystem";
            format = "btrfs";
            mountpoint = "/";
            mountOptions = [ "compress=zstd" ];
          };
        };
      };
    };
  };
}
