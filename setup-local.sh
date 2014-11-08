#!/bin/sh

# Run this immediately after 'meteor create <app>' and before attempting
# to run the app with 'meteor'.

# Parameters:
# 	$1 - The name of the app folder created.

# Creates a symlink for <app>/.meteor/local to point to ~/<app>/local.

# Create the new folder.
mkdir -p ~/$1/local

# Setup the link.
ln -s ~/$1/local $1/.meteor/local