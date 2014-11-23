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
