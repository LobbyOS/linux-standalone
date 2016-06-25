# Linux Standalone Package

A Standalone Lobby Installation for Linux

## HowTo

The `Lobby` directory is the standalone software. This folder is zipped and distributed for download.

The latest Lobby version is extracted to `Lobby/lobby`. This is done when a new version comes out.

## Compile PHP

PHP Version : 7.0.6

* Install the dependencies :
  ```bash
  sudo apt install libxml2-dev libcurl3-dev libmcrypt-dev
  ```
  There maybe other dependencies which you need to install. You will know those when you configure the build
* The `compile-php` folder contains the source code of PHP.

  Use this to configure the build :
  
  ```bash
  ./configure --enable-cli --enable-pdo --with-mysql --with-sqlite3 --with-pdo-mysql --with-pdo-sqlite --with-curl --with-openssl --enable-fileinfo --enable-mbstring --with-mcrypt --enable-zip --enable-pcntl
  ```
* Run `make`
* After building, the PHP binary will be available as `sapi/cli/php`
