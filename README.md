# hpacucli

#### Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup - The basics of getting started with hpacucli](#setup)
    * [What hpacucli affects](#what-hpacucli-affects)
    * [Beginning with hpacucli](#beginning-with-hpacucli)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)

## Overview

Installs and configures HP's toolset "hpacucli", for managing the HP pro liant hardware.

## Module Description

Installs and configures HP's toolset "hpacucli", for managing the HP pro liant hardware. It adds
the required repositories, and installs the hpacucli package.

## Setup
### What hpacucli affects

* Apt repositories
* Installs hpacucli package.

### Beginning with hpacucli

include ::hpacucli

## Reference

::hpacucli
 * This is the base class starting everything

::hpacucli::repo
 * Configures the apt-repo.

::hpacucli::install
 * Installs the toolset.

## Limitations

Developed and tested on Ubuntu 14.04 server. Pull requests are welcomed. 

## Release Notes/Contributors/Etc **Optional**
 * 0.3.0 - Module is upgraded to use ssacli rather than hpacucli. Only tested on Ubuntu 16.04
 * 0.2.0 - Module is bugfixed, and tested on Ubuntu 14.04.
 * 0.1.0 - Initial commit. Nothing really works yet.
