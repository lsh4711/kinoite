FROM quay.io/fedora/fedora-kinoite:43

RUN rpm-ostree override remove firefox firefox-langpacks toolbox kwrite nano nano-default-editor \
	&& rpm-ostree install distrobox fcitx5-hangul gcc docker-compose \
	&& rpm-ostree cleanup --repomd \
	&& rm -r /etc/skel/.mozilla/ \
	&& rm /etc/skel/.bash_logout \
	&& systemd-firstboot --reset
