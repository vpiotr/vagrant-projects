# Overview
Vagrant-based virtual machine for Java development. 

This procedure creates a new virtual machine for Java development.
Included IDE: Intellij IDEA

Supported host operating systems:
* Windows 7 64 bit SP1
* Linux Mint 18.x, 19.x

Components installed during VM build in guest machine:
* Debian 10 "buster" with GNOME 3
* OpenJDK 8 
* [Intellij IDEA](https://www.jetbrains.com/idea/) Community Edition
* [Git](https://git-scm.com/)
* [Maven](https://maven.apache.org/)
* [Docker](https://www.docker.com/)
* [Spring Boot](https://spring.io/projects/spring-boot)
* [VisualVM](https://visualvm.github.io/)

# Prerequisites

Software required on host machine:
* VirtualBox
* Vagrant
* vbguest (Vagrant plugin)

For prerequisites installation details, see README from parent directory.

# Setup Procedure

1) unpack attached files in a new directory

2) go to this directory and open console

3) run vm setup

``vagrant up``

or with debug:

``vagrant up --debug``

4) (optionally) setup VBox guest additions

If clipboard sharing does not work, run:

``vagrant vbguest --do install``

5) (optionally, for GUI) restart 

``vagrant reload``

or when setup failed in the middle:

``vagrant reload --provision``
    
# Default login 

``
User name: vagrant
Password : vagrant 
``    

# See also
* [Vagrant Cheat Sheet](https://gist.github.com/wpscholar/a49594e2e2b918f4d0c4)

