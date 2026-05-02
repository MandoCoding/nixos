{ config, pkgs, ... }:

{
	virtualisation.docker.enable = true;
  	virtualisation.docker.rootless = {
		enable = true;
		setSocketVariable = true;
	};
	systemd.user.services.docker = {
      enable = false;
    };
	environment.systemPackages = with pkgs; [
	docker
	docker-compose

	ctop
	lazydocker
  ];
}
