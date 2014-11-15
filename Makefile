build-trivial:
	cd trivial && nixops create ./trivial.nix ./trivial-vbox.nix -d trivial

info-trivial:
	nixops info -d trivial

deploy-trivial:
	nixops deploy -d trivial

list:
	nixops list
