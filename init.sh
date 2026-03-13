set -e

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"' >> ~/.bashrc
. ~/.bashrc

brew install fish mise

flatpak remote-delete fedora flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak config --set extra-languages ko
flatpak install com.mongodb.Compass io.kinvolk.Headlamp org.chromium.Chromium com.slack.Slack
