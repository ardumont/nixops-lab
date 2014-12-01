{
  webserver =
    { config, pkgs, ... }:
    { deployment.targetEnv = "virtualbox";
      deployment.virtualbox.memorySize = 256; # megabytes
      deployment.virtualbox.sharedFolders = {
        www = {
          hostPath = "/home/tony/public_html";
          readOnly = false;
        };
      };
      # mount share folder on vbox
      # boot.initrd.extraUtilsCommands = ''
      #   mkdir -p /www
      #   mount -t vboxsf www /www
      # '';
    };
}
