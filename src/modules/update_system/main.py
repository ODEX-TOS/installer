#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# Pacstrap TOS
# Should work in any arch-based distros
# Trying K.I.S.S filosophy

import subprocess
import libcalamares
from pathlib import Path

root_mount_point = libcalamares.globalstorage.value("rootMountPoint")

def update_db():

    PACMAN_INIT = "pacman-key --init"
    PACMAN_POPULATE = "pacman-key --populate"
    PACMAN_REFRESH ="pacman-key --refresh-keys"

    # Populate and refresh keys
    subprocess.call(['chroot'] + [root_mount_point] + PACMAN_INIT.split(' '))  
    subprocess.call(['chroot'] + [root_mount_point] + PACMAN_POPULATE.split(' ')) 
    #subprocess.call(['chroot'] + [root_mount_point] +  PACMAN_REFRESH.split(' '))

def run():
    # Check internet
    if libcalamares.globalstorage.value("hasInternet"):
        try:
            update_db()
        except:
            pass
