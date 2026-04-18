.PHONY: switch
update:
	sudo nixos-rebuild switch
.PHONY: clean
clean:
	nix-collect-garbage -d
