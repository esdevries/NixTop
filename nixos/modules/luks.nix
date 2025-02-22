{ config, lib, ... }:  
{  
  boot.initrd.luks.devices."luks-d1e47f5e-b6b3-48d9-9988-d5d6cd01824d".device =  
    "/dev/disk/by-uuid/d1e47f5e-b6b3-48d9-9988-d5d6cd01824d";  
}
