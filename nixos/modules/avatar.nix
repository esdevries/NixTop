{
  systemd.services."sddm-avatar" = {
    description = "Service to copy or update users Avatars at startup.";
    wantedBy = [ "multi-user.target" ];
    before = [ "sddm.service" ];
    script = ''
      for user in /home/*; do

        username=$(basename "$user")
        icon_source="$user/.face.icon"
        icon_dest="/var/lib/AccountsService/icons/$username"

        if [ -f "$icon_source" ]; then
          if [ ! -f "$icon_dest" ] || ! cmp -s "$icon_source" "$icon_dest"; then
            rm -f "$icon_dest"
            cp -L "$icon_source" "$icon_dest"
          fi
        fi

      done
    '';
    serviceConfig = {
      Type = "simple";
      User = "root";
      StandardOutput = "journal+console";
      StandardError = "journal+console";
    };
  };

  systemd.services.sddm = {
    after = [ "sddm-avatar.service" ];
  };
}