# Overview

Octave virtual machine. 

Box includes:
* Debian 9
* Gnome GUI
* Octave

# Prerequisites

Software required on host machine:
* VirtualBox
* Vagrant
* vbguest (Vagrant plugin)

# Install procedure

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

6) restart and continue install procedure

``vagrant reload --provision``
