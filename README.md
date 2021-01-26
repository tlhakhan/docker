# README
The docker library is split into two layers.  The `os` image layer and the `app` images that builds on the `os` layer.

The `app` images can then be referenced into `docker-compose` projects.

| Folder | Description |
| --- | --- |
| app | Application specific docker build files |
| os | OS specific docker build files |

## app
```
app/
├── ansible
├── cgit
├── crond
├── diskbench
├── go-dev
├── ipxe
├── nginx
├── packer
├── samba
├── smokeping
├── squid
└── tftpd

12 directories, 0 files
```

## os
```
os/
├── debian10
├── debian9
├── onie
└── ubuntu2004

4 directories, 0 files
```
