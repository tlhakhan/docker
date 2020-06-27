# README
The docker library is split into two layers.  The `os` image layer and the `app` images that depend on the `os` layer.

The `app` images can then be called into `docker-compose` projects for further application customization.

| Folder | Description |
| --- | --- |
| app | Application specific docker build files |
| os | OS specific docker build files |