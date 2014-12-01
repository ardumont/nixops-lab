{
  network.description = "Web server";

  webserver =
    { config, pkgs, ... }:
    { services.httpd.enable = true;
      services.httpd.adminAddr = "admin@somewhere.org";
      services.httpd.documentRoot = "/www";
      networking.firewall.allowedTCPPorts = [ 80 ];
    };
}
