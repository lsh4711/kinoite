FROM quay.io/fedora/fedora-kinoite:43

RUN rpm-ostree override remove firefox firefox-langpacks toolbox \
	&& rpm-ostree install distrobox \
	&& rpm-ostree cleanup --repomd \
	&& rm -r /etc/skel/.mozilla/ \
	&& rm /etc/skel/.bash_logout
