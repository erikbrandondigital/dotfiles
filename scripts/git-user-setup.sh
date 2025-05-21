#!/usr/bin/env bash

CONFIG_FILE="$HOME/.dotfiles/.gitconfig.user"

if [ -f "$CONFIG_FILE" ]; then
  echo "Skipped: $CONFIG_FILE already exists. No changes were made."
else
  echo "Creating $CONFIG_FILE..."
  echo

  read -rp "Enter your full name: " git_name
  read -rp "Enter your email address: " git_email
  read -rp "Enter your SSH signing key path or value (e.g., ~/.ssh/id_ed25519.pub): " git_key

  cat <<EOF > "$CONFIG_FILE"
# vim: filetype=gitconfig
[user]
    name = $git_name
    email = $git_email
    signingkey = $git_key
EOF

  echo
  echo "Success: $CONFIG_FILE has been created with the following values:"
  echo "  Name       : $git_name"
  echo "  Email      : $git_email"
  echo "  Signing key: $git_key"
fi
