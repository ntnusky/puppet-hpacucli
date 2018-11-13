# == Class: hpacucli
#
# Installs hpacucli
#
# === Examples
#
#  include ::hpacucli::install
#
# === Authors
#
# Eigil Obrestad <eigil-git@obrestad.org>
#
# === Copyright
#
# Copyright 2015 Eigil Obrestad, unless otherwise noted.
#

class hpacucli::install {
  $pkgs = [ 'ssacli']
  package { $pkgs:
    ensure  => 'present',
    require => Class['apt::update']
  }

  $removepkgs = [ 'hpacucli', 'hp-health' ]
  package { $removepkgs:
    ensure => 'absent',
  }
}
