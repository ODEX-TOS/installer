#!/bin/bash

# TODO: Abort if no internet connection is found

# Ensure the official flatpak repo exists
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Update existing flatpaks
flatpak update


# Now we install all our software
flatpak install flathub org.gnome.World.PikaBackup # To more easily manage backups
flatpak install flathub org.gnome.Maps # Gnome's version of google maps
flatpak install flathub org.gnome.NetworkDisplays # Miracast (And in the future chromecast)
flatpak install flathub org.gnome.Calendar # Calendar
flatpak install flathub org.gnome.Contacts # Contacts
flatpak install flathub org.gnome.Totem # Video's
flatpak install flathub app.drey.Dialect # Translations
flatpak install flathub org.gnome.gedit # Text editor
flatpak install flathub org.gnome.Geary # e-mail client
flatpak install flathub org.gnome.Weather # Weather app