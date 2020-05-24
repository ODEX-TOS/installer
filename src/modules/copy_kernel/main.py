#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#

import libcalamares
import subprocess
from libcalamares.utils import check_target_env_call, target_env_call
from libcalamares.utils import *
import os


def run():
    """ Calls routine to create kernel initramfs image.

    :return:
    """
    root_mount_point = libcalamares.globalstorage.value("rootMountPoint")
    try:
     subprocess.check_call(["cp", "/run/archiso/bootmnt/arch/boot/x86_64/vmlinuz", root_mount_point + "/boot/vmlinuz-linux-tos"])
    except:
     pass # doing nothing on exception
    try:
     subprocess.check_call(["cp", "/run/archiso/bootmnt/arch/boot/x86_64/vmlinuz-tos", root_mount_point + "/boot/vmlinuz-linux-tos"])
    except:
     pass # doing nothing on exception

    try:
     os.system("lspci >vbox.txt")
    except:
     pass

    if not 'VirtualBox' in open('vbox.txt').read():
     try:
      subprocess.check_call(["pacman", "-Rns", "virtualbox-guest-utils", "virtualbox-guest-modules-arch", "--noconfirm", "--root", root_mount_point])
     except:
      pass

    return None
