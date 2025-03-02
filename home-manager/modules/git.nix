{ profile, ... }:
{
  programs.git = {
    enable = true;
    userName = profile.fullname;
    userEmail = profile.gitemail;
    lfs.enable = true;
  };
}
