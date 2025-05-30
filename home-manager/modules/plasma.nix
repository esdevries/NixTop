{ lib, profile, ... }:
let
  commonWidgets = [
    "org.kde.plasma.kickoff"
    "org.kde.plasma.pager"
    "org.kde.plasma.taskmanager"
    "org.kde.plasma.systemtray"
    "org.kde.plasma.digitalclock"
  ];

  panelSettings = ''
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

  commonPowerSettings = {
    autoSuspend.action = "nothing";
    dimDisplay.enable = false;
    powerButtonAction = "sleep";
    powerProfile = "balanced";
    turnOffDisplay.idleTimeout = "never";
    whenSleepingEnter = "standbyThenHibernate";
    whenLaptopLidClosed = "sleep";
  };
in
{
  programs.plasma = {
    enable = true;
    overrideConfig = true;

    workspace = {
      clickItemTo = "select";
      iconTheme = "Papirus-Dark";
      colorScheme = "MateriaDark";
      theme = "Materia";
      windowDecorations.library = "org.kde.breeze";
      windowDecorations.theme = "Breeze";
      wallpaper = "/home/${profile.userName}/.wallpaper";
      splashScreen.theme = "SimpleTuxSplash-Plasma6";
    };

    kscreenlocker = {
      appearance.wallpaper = "/home/${profile.userName}/.wallpaper";
      lockOnResume = true;
      autoLock = false;
      passwordRequired = true;
    };

    panels = [
      {
        screen = 0;
        location = "top";
        height = 48;
        widgets = commonWidgets;
        extraSettings = panelSettings;
      }
      {
        screen = 1;
        location = "top";
        height = 48;
        widgets = commonWidgets;
        extraSettings = panelSettings;
      }
      {
        screen = 2;
        location = "top";
        height = 48;
        widgets = commonWidgets;
        extraSettings = panelSettings;
      }
    ];

    powerdevil = {
      AC = lib.mkForce commonPowerSettings;
      battery = lib.mkForce commonPowerSettings;
      lowBattery = lib.mkForce commonPowerSettings;
    };

    kwin = {
      nightLight = {
        enable = true;
        location.latitude = "52.353511";
        location.longitude = "6.658120";
        mode = "location";
        temperature.night = 3200;
      };
      virtualDesktops = {
        number = 9;
        rows = 3;
      };
      effects = {
        wobblyWindows.enable = true;
        translucency.enable = true;
        windowOpenClose.animation = "fade";
      };
      titlebarButtons.left = [
        "on-all-desktops"
        "keep-above-windows"
      ];
    };

    input.touchpads = [
      {
        enable = true;
        name = "ELAN2310:00 04F3:3238 Touchpad";
        naturalScroll = true;
        productId = "3238";
        tapToClick = true;
        vendorId = "04f3";
      }
    ];

    shortcuts = lib.mkMerge [
      {
        "kitty.desktop" = {
          "_launch" = "Alt+Return";
        };
      }
      {
        "org.kde.dolphin.desktop" = {
          "_launch" = "Alt+E";
        };
      }
      {
        "brave-browser.desktop" = {
          "_launch" = "Alt+R";
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
          "Window Custom Quick Tile Right" = "Alt+Right";
          "Window Custom Quick Tile Left" = "Alt+Left";
        };
      }
    ];
  };
}
