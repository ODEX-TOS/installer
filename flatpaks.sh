#!/bin/bash

# TODO: Abort if no internet connection is found

# Ensure the official flatpak repo exists
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Update existing flatpaks
flatpak update -y


# Now we install all our software
flatpak install -y flathub org.gnome.World.PikaBackup # To more easily manage backups
flatpak install -y flathub org.gnome.Maps # Gnome's version of google maps
flatpak install -y flathub org.gnome.NetworkDisplays # Miracast (And in the future chromecast)
flatpak install -y flathub org.gnome.Calendar # Calendar
flatpak install -y flathub org.gnome.Contacts # Contacts
flatpak install -y flathub org.gnome.Totem # Video's
flatpak install -y flathub app.drey.Dialect # Translations
flatpak install -y flathub org.gnome.gedit # Text editor
flatpak install -y flathub org.gnome.Geary # e-mail client
flatpak install -y flathub org.gnome.Weather # Weather app
