{
	imports = [
		./zsh.nix
		./modules/all.nix
	];

	home = {
		username = "lcow";
		homeDirectory = "/home/lcow";
		stateVersion = "26.05";
	};
}
