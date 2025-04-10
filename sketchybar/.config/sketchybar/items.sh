#!/usr/bin/env zsh

source "$CONFIG_DIR/environment"

new_item() {
  name=$1
  position=$2
  source "$ITEM_DIR/$name" $position
}

new_spacer() {
  position=$1
  width=$2
  source "$ITEM_DIR/spacer" $position $width
}
