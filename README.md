# JenkinsVagrant

## What is JenkinsVagrant?
JenkinsVagrant is a simple proof of concept for automating Jenkins bootstrapping
and installation. This project is leveraging the use of Vagrant and VirtualBox
on your local system. Finally, Jenkins would be initialised with a Job which would
run every 5 minutes downloading the latest version of Ansible RPM.
This project is running **exclusively** on Mac system (Linux coming soon!)

## News
* 2019-04-10 - v0.0.1 released! [[download](https://github.com/obutterbach/jenkins_vagrant/releases/tag/v0.0.1)]

## Quick Start

### Check if all requirements are installed on your machine:

`./preinstall`

This would check and/or install the following requirement:
* Vagrant

By default, VirtualBox is the default provider for Vagrant, more information in Installation section
You can download it with the following link:
* [**DownloadVirtualBox**](https://download.virtualbox.org/virtualbox/6.0.4/VirtualBox-6.0.4-128413-OSX.dmg).

### Start your app:

`vagrant up`

This would implement the following:
* Download Fedora image
* Bootstrap Jenkins
* Create a Job that would run every 5 minutes

### How to verify that's running

Simply open your favourite browser to the following address:

`http://127.0.0.1:8080/`

This would then display Jenkins main dashboard, *download_ansible* should be displayed
and start running every 5 minutes

## Installation
You do have the following options, `preinstall` script or/and you can follow the official
documentations from Vagrant / VirtualBox websites:
* Run `./preinstall.sh` that would guide you through the Vagrant installation
* [**Vagrant**](https://www.vagrantup.com/docs/installation/).
Follow the official guideline for installing Vagrant
* [**VirtualBox**](https://www.virtualbox.org/)
Follow the official guideline for installing VirtualBox
