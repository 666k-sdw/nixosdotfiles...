{ config, ... }:
{
	programs.zsh = {
		enable = true;
		enableCompletion = true;
		autosuggestion.enable = true;
		syntaxHighlighting.enable = true;

		shellAliases = {
			rb = "sudo nixos-rebuild switch";
			upd = "nix-channel --update";
			upg = "sudo nixos-rebuild switch --upgrade";
			hms = "home-manager switch";
			conf = "sudo nvim /etc/nixos/configuration.nix";
			pkgs = "sudo nvim /etc/nixos/packages.nix";

			ls = "ls -l";
			la = "ls -all";
			l = "ls -l";
			v = "nvim";
			ff = "fastfetch";
		};
		history.size = 10000;
		history.path = "${config.xdg.dataHome}/zsh/history";

		oh-my-zsh = {
			enable = true;
			plugins = ["git" "sudo"];
			theme = "linuxonly";
		};
	};
		
}
