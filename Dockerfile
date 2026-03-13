FROM quay.io/fedora/fedora-kinoite:43

RUN systemd-firstboot --reset --locale en_US.UTF-8 --timezone Asia/Seoul \
	&& rm -r /etc/skel/.mozilla/ \
	&& rm /etc/skel/.bash_logout \
	&& rpm-ostree override remove firefox firefox-langpacks toolbox kwrite nano nano-default-editor \
	&& rpm-ostree install distrobox fcitx5-hangul gcc docker-compose
