#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# This module avoid problems detecting mounted partitions or new user at target system

import libcalamares
import subprocess
import json
from libcalamares.utils import check_target_env_call, target_env_call
from libcalamares.utils import *

import abc
from string import Template
import subprocess

import libcalamares
from libcalamares.utils import check_target_env_call, target_env_call
from libcalamares.utils import gettext_path, gettext_languages

import gettext

def run():
    """ Get root and username directly from calamares.

    :return:
    """

    ##### WORKS
    try:
     subprocess.call(['rm', '/tmp/chrootpath.txt'])
     with open('/tmp/chrootpath.txt', 'w') as file:
      root_mount_point = libcalamares.globalstorage.value("rootMountPoint")
      file.write(root_mount_point)
      file.close()
    except:
     pass # doing nothing on exception

    try:
     global mode_packages, total_packages, completed_packages, group_packages
     subprocess.call(['rm', '/tmp/packages_list.txt'])
     operations = libcalamares.job.configuration.get("operations", [])
     if libcalamares.globalstorage.contains("packageOperations"):
      operations += libcalamares.globalstorage.value("packageOperations")
      with open('/tmp/packages_list.txt', 'a') as file:
       file.write(json.dumps(operations))

    except:
     pass # doing nothing on exception

    try:
     subprocess.call(['rm', '/tmp/new_username.txt'])
     with open('/tmp/new_username.txt', 'w') as file:
      _username = libcalamares.globalstorage.value("username")
      file.write(_username)
      file.close()
    except:
     pass # doing nothing on exception

    # Simpler to copy to new root?
    RSYNC_CMD = "rsync -vaRI"
    subprocess.call(RSYNC_CMD.split(' ') + ["/tmp/chrootpath.txt"] + [root_mount_point])
    subprocess.call(RSYNC_CMD.split(' ') + ["/tmp/new_username.txt"] + [root_mount_point])






    # Needs testing
    #_ROOT_PATH_CHROOT_CLEANER_SCRIPT = "sed -i "2i $(cat /tmp/chrootpath.txt)" /usr/bin/chrooted_cleaner_script.sh"
    #_ROOT_PATH_CLEANER_SCRIPT = "sed -i "2i $(cat /tmp/chrootpath.txt)" /usr/bin/cleaner_script.sh"

    #_USER_CHROOT_CLEANER_SCRIPT = "sed -i "3i $(cat /tmp/new_username.txt)" /usr/bin/chrooted_cleaner_script.sh"
    #_USER_CLEANER_SCRIPT = "sed -i "3i $(cat /tmp/new_username.txt)" /usr/bin/cleaner_script.sh"

    #subprocess.call([_ROOT_PATH_CHROOT_CLEANER_SCRIPT, '&&', _ROOT_PATH_CLEANER_SCRIPT], shell=True)

    #subprocess.call([_USER_CHROOT_CLEANER_SCRIPT, '&&', _USER_CLEANER_SCRIPT], shell=True)
    
    return None
