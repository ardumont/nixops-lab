build-trivial:
	cd trivial && nixops create ./trivial.nix ./trivial-vbox.nix -d trivial

info-trivial:
	nixops info -d trivial

deploy-trivial:
	nixops deploy -d trivial

ssh-trivial:
	nixops ssh -d trivial webserver

stop-trivial:
	nixops stop -d trivial

start-trivial:
	nixops start -d trivial

destroy-trivial:
	nixops destroy -d trivial

list:
	nixops list

build-tomcat:
	cd tomcat && nixops create ./tomcat.nix ./tomcat-vbox.nix -d tomcat

info-tomcat:
	nixops info -d tomcat

deploy-tomcat:
	nixops deploy -d tomcat

ssh-tomcat:
	nixops ssh -d tomcat webserver

stop-tomcat:
	nixops stop -d tomcat

start-tomcat:
	nixops start -d tomcat

destroy-tomcat:
	nixops destroy -d tomcat

# %.o:
# 	echo $@
