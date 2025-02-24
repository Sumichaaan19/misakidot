#!/bin/bash

# Destination folder
DEST_DIR="/home/ralphie/misakidot/.config"

# Ensure destination exists
mkdir -p "$DEST_DIR"

# Copy config folders
cp -r ~/.config/cava \
      ~/.config/hyde \
      ~/.config/hypr \
      ~/.config/kitty \
      ~/.config/fastfetch \
      ~/.config/gtk-3.0 \
      ~/.config/gtk-4.0 \
      ~/.config/nwg-look \
      ~/.config/ranger \
      ~/.config/rofi \
      ~/.config/swaync \
      ~/.config/wal \
      ~/.config/wall \
      ~/.config/waybar \
      ~/.config/wlogout \
      ~/.config/xsettingsd \
      ~/.config/yay \
      ~/.config/btop \
      "$DEST_DIR"

# Copy .bashrc & .gtkrc-2.0 separately
cp ~/.bashrc /home/ralphie/misakidot/
cp ~/.gtkrc-2.0 /home/ralphie/misakidot/

echo "Configs updated in $DEST_DIR"
