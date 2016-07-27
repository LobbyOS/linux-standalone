# Linux Standalone Package

A Standalone Lobby Installation for Linux

## HowTo

The `Lobby` directory is the standalone software. This folder is zipped and distributed for download.

The latest Lobby version is extracted to `Lobby/lobby`. This is done when a new version comes out.

## Compile PHP

PHP Version : 7.0.9

* Get latest PHP Source Code from [here](http://www.php.net/downloads.php)
* Extract the source code into a directory
* Install the dependencies :
  ```bash
  sudo apt install pkg-config libxml2-dev libssl-dev libsslcommon2-dev libcurl4-openssl-dev libmcrypt-dev
  ```
  There maybe other dependencies which you need to install. You will know those when you configure the build
* The `compile-php` folder contains the source code of PHP.

  Use this to configure the build :
  
  ```bash
  ./configure --enable-cli --enable-pdo --with-mysql --with-sqlite3 --with-pdo-mysql --with-pdo-sqlite --with-curl --with-openssl --enable-fileinfo --enable-mbstring --with-mcrypt --enable-zip --enable-pcntl
  ```
* Run `make`
* After building, the PHP binary will be available as `sapi/cli/php`

## Binaries In Repo

To save git space, binaries are removed from this repo. These binaries are :

* Lobby/php/php
* Lobby/php/extensions/libcrypto.so.1.0.0
* Lobby/php/extensions/libcurl.so.4.4.0
* Lobby/php/extensions/libmcrypt.so.4
* Lobby/php/extensions/libssl.so.1.0.0
