# README
The docker library is split into two layers.  The `os` image layer and the `app` images that depend on the `os` layer.

The `app` images can then be called into `docker-compose` projects for further application customization.

| Folder | Description |
| --- | --- |
| app | Application specific docker build files |
| os | OS specific docker build files |

## app
| Applicaiton | Description |
| --- | --- |
| ansible | Ansible running on Ubuntu |
| go-dev | Go development environment running on Ubuntu |
| nginx | Nginx running on Ubuntu | 
| squid | Squid running on Ubuntu | 
| tfptd | tfptd running on Ubuntu | 

## os
The OS platforms are configured to trust home lab CA server and uses internal package repository server.
| Operating System | Description |
| --- | --- |
| debian9 | Debian 9 image |
| debian10 | Debian 10 image |
| ubuntu | Ubuntu 20.04 image |
