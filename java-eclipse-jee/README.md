# Vagrant box for Java EE development (CentOS 7)

## Overview
This procedure creates a new virtual machine for Java EE development.

Supported host operating systems:
* Windows 7 64 bit SP1
* Linux Mint 18.3

Installed components in guest machine (VM):
* CentOS 7 with GUI
* OpenJDK
* Eclipse for Java EE
* Apache Derby
* Maven
* Git

# Prerequisites

Software required on host machine:
* VirtualBox
* Vagrant
* vbguest (Vagrant plugin)

## Setup Procedure

1) unpack attached files in a new directory

2) go to this directory and open console

3) setup vagrant (only once after vagrant install)

``vagrant plugin install vagrant-vbguest``

4) run vm setup

``vagrant up``

or with debug:

``vagrant up --debug``

5) setup vagrant guest additions

``vagrant vbguest --do install``

6) (optionally for GUI) restart and continue install procedure

``vagrant reload --provision``

## Default login

``
User name: vagrant
Password : vagrant
``

## See also
* [Vagrant Cheat Sheet](https://gist.github.com/wpscholar/a49594e2e2b918f4d0c4)
