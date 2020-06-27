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
| ansible | Ansible 2.9.10 running on CentOS 8 |
| go-env | Go 1.14.10 running on CentOS 8 |
| nginx | Nginx 1.18.0 running on CentOS 8 | 

## os
The OS platforms are configured to trust home lab CA server and uses internal package repository server.
| Operating System | Description |
| --- | --- |
| centos7 | CentOS 7.8.2003 image |
| centos8 | CentOS 8.2.2004 image |
| ubuntu | Ubuntu 20.04 image |
