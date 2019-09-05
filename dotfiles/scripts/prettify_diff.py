#!/usr/local/bin/python

'''
Prettifies all the files in the current branch that have been
changed (wrt master) by running npx prettier command
'''
import subprocess
import os

files = subprocess.check_output(['git', 'diff', '--name-only', 'master']).split('\n')

SUPPORTED_FILE_FORMATS = ['tsx', 'ts']

def valid_file_extension(file_name):
    for fmt in SUPPORTED_FILE_FORMATS:
        if file_name.endswith(fmt):
            return True
    return False

# TODO(riyanshk): accept file extension types as sysargv
prettify_command = 'npx prettier --write'
for f in [f for f in files if valid_file_extension(f)]:
    prettify_command = prettify_command + ' {}'.format(f)
os.system(prettify_command)
