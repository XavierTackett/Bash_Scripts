#!/bin/bash

# Author: Xavier Tackett
# Date Created: 01/16/2024
# Date Modifed: 01/16/2024

# Description:
# This script will backup all files in the home directory

# Usage:
# This script is automated, Just execute it and it will put the backup in your home directory 
# If you want to change the directory your backing up replace the home variable 
# with the absolute path of the directory you want to backup

# This creates the variable for date and time:
Datetime=$(printf "%(%h_%d_%Y_%H_%M)T")

# This is the path that is going to back up:
home=$(echo $HOME)

# Script:
tar -cf  $home/backup$Datetime.tar /$home
