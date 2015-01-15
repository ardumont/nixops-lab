{
  network.description = "Tomcat Web server";

  tomcatwebserver =
    { config, pkgs, ... }:
    { services.tomcat.enable = true;
      networking.firewall.allowedTCPPorts = [ 8080 ];
    };
}
