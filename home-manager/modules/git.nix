{ profile, ... }:
{
  programs.git = {
    enable = true;
    userName = profile.fullName;
    userEmail = profile.gitEmail;
    lfs.enable = true;

    aliases = {
      c = "commit";
      ca = "commit --amend --no-edit";
      d = "diff";
      f = "fetch";
      lg = "log --oneline --graph --decorate --all";
      nuke = "reset --hard";
      pf = "push --force-with-lease";
      ps = "push";
      rev = "revert HEAD";
      undo = "reset --soft HEAD~1";
      st = "status";
      su = "remote set-url origin";
    };

    ignores = [
      "*devenv*"
      ".direnv/"
      ".envrc"
    ];
  };
}
