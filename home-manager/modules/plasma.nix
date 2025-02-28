{ pkgs, lib, profile, ... }:
{
  programs.plasma = {
    enable = true;

    workspace = {
      clickItemTo = "select";
      iconTheme = "Papirus-Dark";
      colorScheme = "MateriaDark";
      theme = "Materia";
      windowDecorations.library = "org.kde.kwin.aurorae";
      windowDecorations.theme = "__aurorae__svg__Materia-Dark";
      wallpaper = "/home/${profile.username}/.wallpaper";
      splashScreen.theme = "SimpleTuxSplash-Plasma6";
    };

    kscreenlocker.appearance.wallpaper = "/home/${profile.username}/.wallpaper";
    panels = [
      {
        screen = 0;
        location = "top";
        height = 48;
        widgets = [
          "org.kde.plasma.kickoff"
          "org.kde.plasma.pager"
          "org.kde.plasma.taskmanager"
          "org.kde.plasma.systemtray"
          "org.kde.plasma.digitalclock"
        ];
        extraSettings = ''
            panel.widgetIds.forEach((appletWidget) => {
              appletWidget = panel.widgetById(appletWidget);

              if (appletWidget.type === "org.kde.plasma.kickoff") {
                  appletWidget.currentConfigGroup = ["General"];
                  appletWidget.writeConfig("icon", "tux");
              }

              if (appletWidget.type === "org.kde.plasma.taskmanager") {
                  appletWidget.currentConfigGroup = ["General"];
                  appletWidget.writeConfig("launchers", "");
              }
          });
        '';
      }
      {
        screen = 1;
        location = "top";
        height = 64;
        widgets = [
          "org.kde.plasma.kickoff"
          "org.kde.plasma.pager"
          "org.kde.plasma.taskmanager"
          "org.kde.plasma.systemtray"
          "org.kde.plasma.digitalclock"
        ];
        extraSettings = ''
            panel.widgetIds.forEach((appletWidget) => {
              appletWidget = panel.widgetById(appletWidget);

              if (appletWidget.type === "org.kde.plasma.kickoff") {
                  appletWidget.currentConfigGroup = ["General"];
                  appletWidget.writeConfig("icon", "tux");
              }

              if (appletWidget.type === "org.kde.plasma.taskmanager") {
                  appletWidget.currentConfigGroup = ["General"];
                  appletWidget.writeConfig("launchers", "");
              }
          });
        '';
      }
    ];

    kwin.nightLight.enable = true;
    kwin.nightLight.location.latitude = "52.353511";
    kwin.nightLight.location.longitude = "6.658120";

    kwin.virtualDesktops.number = 9;
    kwin.virtualDesktops.rows = 3;

    kwin.nightLight.mode = "location";
    kwin.nightLight.temperature.night = 3200;

    kwin.effects.wobblyWindows.enable = true;
    kwin.effects.translucency.enable = true;
    kwin.effects.windowOpenClose.animation = "fade";

    kwin.titlebarButtons.left = [
      "on-all-desktops"
      "keep-above-windows"
    ];

    shortcuts = lib.mkMerge [
      {
        "kitty.desktop" = {
          "_launch" = "Alt+Return";
        };
      }
      {
        kwin = {
          "Window Close" = "Alt+Q";

          "Switch One Desktop to the Right" = "Alt+D";
          "Switch One Desktop to the Left" = "Alt+A";
          "Switch One Desktop Up" = "Alt+W";
          "Switch One Desktop Down" = "Alt+S";

          "Window One Desktop to the Right" = "Alt+Shift+D";
          "Window One Desktop to the Left" = "Alt+Shift+A";
          "Window One Desktop Up" = "Alt+Shift+W";
          "Window One Desktop Down" = "Alt+Shift+S";
        };
      }
    ];
  };
}
