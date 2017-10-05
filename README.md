# What is it?

[![Docker Pulls](https://img.shields.io/docker/pulls/dachaz/unrar-armhf.svg?style=flat-square)](https://hub.docker.com/r/dachaz/unrar-armhf/) [![Docker Stars](https://img.shields.io/docker/stars/dachaz/unrar-armhf.svg?style=flat-square)](https://hub.docker.com/r/dachaz/unrar-armhf/)

A tiny image based on [alpine-armhf](https://hub.docker.com/r/ogomez/arm32v7-alpine/) with [unrar](https://pkgs.alpinelinux.org/package/edge/main/armhf/unrar).

Compatible with **WD My Cloud Mirror Gen 2**, making it possible to unrar archives directly on the device.


# Usage

To unpack a file named `MY_FILE.rar` found in the current folder, run:

```shell
docker run --rm -v "$PWD:/files" dachaz/unrar-armhf e -r MY_FILE.rar
```

**Note for WD My Cloud Mirror Gen 2 users:** No additional setup is necessary, this command is fully self-contained. Only change the file name.

## unrar.sh

For convenience, you could use [unrar.sh](unrar.sh) from this repository.

```shell
unrar.sh /path/to/MY_FILE.rar
```

**Note for WD My Cloud Mirror Gen 2 users:** To download the script to your device, you could run:

```shell
wget --no-check-certificate https://raw.githubusercontent.com/Dachaz/docker-unrar-armhf/master/unrar.sh && chmod +x unrar.sh
```

# License

Copyright © 2017 Dachaz. This software is licensed under the **MIT License**.
