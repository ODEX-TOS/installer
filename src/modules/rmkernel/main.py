#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#

import libcalamares
import subprocess
from libcalamares.utils import check_target_env_call, target_env_call
from libcalamares.utils import *
import os


def run():
    """ Calls routine to rm kernel initramfs conf.

    :return:
    """
    root_mount_point = libcalamares.globalstorage.value("rootMountPoint")
    try:
     subprocess.check_call(["rm", root_mount_point + "/etc/mkinitcpio.d/linux-tos.preset"])
    except:
     pass # doing nothing on exception
    return None
