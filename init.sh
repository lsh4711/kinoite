set -e

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak config --set extra-languages ko
flatpak install --assumeyes com.mongodb.Compass io.kinvolk.Headlamp org.chromium.Chromium com.slack.Slack
