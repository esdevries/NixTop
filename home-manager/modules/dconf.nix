{ profile, pkgs, lib, ... }:
{
  dconf = {
    enable = true;
    settings = {
      "org/gnome/shell" = {
        disable-user-extensions = false;
        enabled-extensions = [
          "${pkgs.gnomeExtensions.blur-my-shell.extensionUuid}"
          "${pkgs.gnomeExtensions.clipboard-indicator.extensionUuid}"
          "${pkgs.gnomeExtensions.dash-to-panel.extensionUuid}"
        ];
        favorite-apps = [];
      };

      "org/gnome/shell/extensions/blur-my-shell" = {
        brightness = 0.75;
        noise-amount = 0;
      };

      "org/gnome/desktop/background" = {
        picture-uri = "file:///home/${profile.username}/.wallpaper";
        picture-uri-dark = "file:///home/${profile.username}/.wallpaper";
        picture-options = "zoom";
      };

      "org/gnome/desktop/interface" = {
        color-scheme = "prefer-dark";
        text-scaling-factor = 0.8499999999999999;
        toolkit-accessibility = false;
      };

      "org/gnome/desktop/screensaver" = {
        color-shading-type = "solid";
        picture-options = "zoom";
        picture-uri = "file:///home/${profile.username}/.wallpaper";
      };

      "org/gnome/desktop/peripherals/touchpad" = {
        click-method = "areas";
        two-finger-scrolling-enabled = true;
      };

      "org/gnome/desktop/wm/keybindings" = {
        close = [ "<Alt>q" ];
        move-to-workspace-left = [ "<Shift><Alt>a" ];
        move-to-workspace-right = [ "<Shift><Alt>d" ];
        switch-applications = [];
        switch-applications-backward = [];
        switch-to-workspace-left = [ "<Alt>a" ];
        switch-to-workspace-right = [ "<Alt>d" ];
        switch-windows = [ "<Alt>Tab" ];
        switch-windows-backward = [ "<Shift><Alt>Tab" ];
      };

      "org/gnome/desktop/wm/preferences" = {
        num-workspaces = 8;
      };

      "org/gnome/mutter" = {
        dynamic-workspaces = false;
      };

      "org/gnome/settings-daemon/plugins/media-keys" = {
        control-center = [ "<Alt>BackSpace" ];
        custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" ];
        home = [ "<Alt>e" ];
        www = [ "<Alt>r" ];
      };

      "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
        binding = "<Alt>Return";
        command = "kitty";
        name = "term";
      };

      "org/gnome/shell/extensions/dash-to-panel" = {
        appicon-margin = 0;
        appicon-padding = 4;
        dot-position = "TOP";
        dot-style-unfocused = "DOTS";
        extension-version = 68;
        global-border-radius = 0;
        group-apps = true;
        group-apps-label-max-width = 10;
        hotkeys-overlay-combo = "TEMPORARILY";
        intellihide = false;
        isolate-workspaces = true;
        panel-anchors = ''
          {"TMX-0x00000000":"MIDDLE"}
        '';
        panel-element-positions = ''
          {"TMX-0x00000000":[{"element":"showAppsButton","visible":true,"position":"stackedTL"},{"element":"activitiesButton","visible":false,"position":"stackedTL"},{"element":"leftBox","visible":true,"position":"stackedTL"},{"element":"taskbar","visible":true,"position":"stackedTL"},{"element":"centerBox","visible":true,"position":"stackedBR"},{"element":"rightBox","visible":true,"position":"stackedBR"},{"element":"systemMenu","visible":true,"position":"stackedBR"},{"element":"dateMenu","visible":true,"position":"stackedBR"},{"element":"desktopButton","visible":true,"position":"stackedBR"}]}\n
        '';
        panel-element-positions-monitors-sync = true;
        panel-lengths = ''
          {"TMX-0x00000000":100}\n
        '';
        panel-positions = ''
          {"TMX-0x00000000":"TOP"}
        '';
        panel-side-margins = 0;
        panel-side-padding = 0;
        panel-sizes = ''
          {"TMX-0x00000000":32}
        '';
        panel-top-bottom-margins = 0;
        prefs-opened = false;
        primary-monitor = "TMX-0x00000000";
        show-apps-icon-file = "/home/${profile.username}/.app.icon";
        show-apps-icon-side-padding = 0;
        show-apps-override-escape = true;
        trans-panel-opacity = 0.0;
        trans-use-custom-gradient = false;
        trans-use-custom-opacity = true;
        trans-use-dynamic-opacity = false;
        window-preview-title-position = "TOP";
      };

      "org/gnome/shell/app-switcher" = {
        current-workspace-only = true;
      };
    };
  };
}