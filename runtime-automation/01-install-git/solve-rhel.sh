#!/bin/sh
sudo dnf install -y git
sudo dnf group install -y "Development Tools"
echo "Solved module called 01-install-git" >> /tmp/progress.log