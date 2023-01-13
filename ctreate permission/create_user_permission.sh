#!/bin/bash

# Utility to manage users and teams

case "$1" in
  "addTeam")
    # Create a new team (group)
    sudo groupadd "$2"
    ;;
  "addUser")
    # Create a new user and add to the specified team
    sudo useradd -G "$2" "$3"
    # Set permissions on the user's home directory
    sudo chmod 750 /home/"$3"
    sudo chmod 755 /home
    sudo chown "$3":"$2" /home/"$3"
    # Create shared directories for the team and ninja
    mkdir /home/"$3"/team
    mkdir /home/"$3"/ninja
    # Set team-wide permissions on the shared directories
    chmod 770 /home/"$3"/team
    chmod 770 /home/"$3"/ninja
    chown "$3":"$2" /home/"$3"/team
    chown "$3":"$2" /home/"$3"/ninja
    ;;
  
    esac
    ;;
  *)
    echo "Usage: $0 {addTeam|addUser|delTeam|ls} [args]"
    ;;
esac