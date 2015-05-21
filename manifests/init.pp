# == Class: hpacucli
#
# Sets up repos and installs hpacucli
#
# === Examples
#
# include ::hpacucli
#
# === Authors
#
# Eigil Obrestad <eigil-git@obrestad.org>
#
# === Copyright
#
# Copyright 2015 Eigil Obrestad, unless otherwise noted.
#
class hpacucli {
  class { '::hpacucli::repo' : } ->
  class { '::hpacucli::install' : }
}
