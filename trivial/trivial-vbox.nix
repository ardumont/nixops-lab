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
      system.activationScripts.media = ''
        mkdir -m 0755 -p /www
        mount -t vboxsf www /www
      '';
    };
}
