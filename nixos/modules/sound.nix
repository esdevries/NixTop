{
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;

    /*
      Xbox/Ps5 monitor audio
      extraConfig.pipewire = {
        "99-loopback" = {
          "context.modules" = [
            {
              "name" = "libpipewire-module-loopback";
              "args" = {
                "latency.msec" = 10;
                "adjust.time" = 5;
              };
            }
          ];
        };
      };
    */
  };
}
