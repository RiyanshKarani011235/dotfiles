#!/usr/local/bin/python

'''
Prettifies all the files in the current branch that have been
changed (wrt master) by running npx prettier command
'''
import subprocess
import os

files = subprocess.check_output(['git', 'diff', '--name-only', 'master']).split('\n')

# TODO(riyanshk): accept file extension types as sysargv
prettify_command = 'npx prettier --write'
for f in [f for f in files if f.endswith('tsx')]:
    prettify_command = prettify_command + ' {}'.format(f)
os.system(prettify_command)
