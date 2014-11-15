{
  network.description = "Web server";

  webserver =
    { config, pkgs, ... }:
    { services.httpd.enable = true;
      services.httpd.adminAddr = "admin@somewhere.org";
      services.httpd.documentRoot = "${pkgs.valgrind}/share/doc/valgrind/html";
      networking.firewall.allowedTCPPorts = [ 80 ];
    };
}
