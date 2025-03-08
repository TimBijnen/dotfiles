#!/bin/bash

echo "Setting custom key repeat settings..."

defaults write -g KeyRepeat -int 1
defaults write -g InitialKeyRepeat -int 10

echo "Key repeat settings applied! You may need to log out and log back in for changes to take effect."
