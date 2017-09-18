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
  package { 'hpacucli':
    ensure => 'present',
  }
  package { 'hp-health':
    ensure => 'present',
  }
}
