#!/usr/bin/env bash
# Preinstall JenkionsVagrant.
#title          :preinstall.sh
#description    :This script will install Minikube is installed on Mac / Linux
#author         :Oli
#date           :10/04/2019
#version        :0.1
#usage          :bash <(curl -s https://raw.githubusercontent.com/obutterbach/jenkins_vagrant/blob/master/preinstall.sh)
#bash_version   :3.2.57(1)-release
#===================================================================================

set -o errexit
set -o pipefail
set -o nounset

RESET_COLOR="\033[0m"
RED_COLOR="\033[0;31m"
GREEN_COLOR="\033[0;32m"
BLUE_COLOR="\033[0;34m"

function reset_color() {
  echo -e "${RESET_COLOR}\c"
}

function red_color() {
  echo -e "${RED_COLOR}\c"
}

function green_color() {
  echo -e "${GREEN_COLOR}\c"
}

function blue_color() {
  echo -e "${BLUE_COLOR}\c"
}

function separator() {
  green_color
  echo "#=============================STEP FINISHED=============================#"
  reset_color
}

function hello() {
  blue_color
  echo "This script will guide you through installing all required dependencies"
  echo "for installing Vagrant"
  green_color
  read -p "Do you want to proceed with installation? (y/N) " -n 1 answer
  echo
  if [ ${answer} != "y" ]; then
      exit 1
  fi
}

function download_vagrant() {
  blue_color
  echo "Trying to detect installed Vagrant..."
  if ! [ $(command -v vagrant 2>&1) ]; then
    blue_color
    echo "You don't have Vagrant installed"
    echo "This is required to proceed with installation"
    green_color
    read -p "Do you agree to download Vagrant? (y/N) " -n 1 answer
    echo
    if [ ${answer} != "y" ]; then
        exit 1
    fi
    blue_color
    echo "Downloading Vagrant from https://releases.hashicorp.com/..."
    curl -LO https://releases.hashicorp.com/vagrant/2.2.2/vagrant_2.2.2_x86_64.dmg \
    && mv vagrant_2.2.2_x86_64.dmg ~/Downloads/vagrant_2.2.2_x86_64.dmg
    echo "Vagrant package is now in your Downloads folder"
    echo "thank you for intalling it on your system before proceeding"
  else
    blue_color
    echo "Seems like you have installed Vagrant, so skipping..."
  fi
  reset_color
  separator
  sleep 1
}

hello
download_vagrant
