#!/bin/bash

set -x

nas_user="uXXXXXX-xxxN"
nas_pass="pwd"
nas_path="//$nas_user.your-storagebox.de/$nas_user"
mnt_path="/mnt/$nas_user"

# Function to check if a folder exists

check_folder_exists() {

  if [ -d "$mnt_path" ]; then
    echo "Folder '$mnt_path' exists."
  else
    echo "Folder '$mnt_path' does not exist."
    mkdir $mnt_path
  fi
}

# Call the function with the folder path
check_folder_exists $mnt_path

mount.cifs -o user=$nas_user,pass=$nas_pass $nas_path $mnt_path

findmnt $mnt_path

set +x
