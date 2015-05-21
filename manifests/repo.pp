# == Class: hpacucli
#
# Set up an apt repository for hpacucli
#
# === Parameters
#
# Document parameters here.
#
# [*repository_url*]
#   Where the repository is located. 
#   Defaults to http://hwraid.le-vert.net/debian 
#
# [*repositories*]
#   Which repos to include.
#   Defaults to "wheezy main" 
#
# [*key_source*]
#   Link to the location of the key
#   Defaults to "http://hwraid.le-vert.net/debian/hwraid.le-vert.net.gpg.key"
#
# [*key_fingerprint*]
#   The key fingerprint.
#   Defaults to "0073C11919A641464163F7116005210E23B3D3B4"
#
# === Examples
#
#  class { 'hpacucli::repo':
#    repository_url  => "http://hwraid.le-vert.net/debian"
#    repositories    => "wheezy main"
#    key_source      => "http://hwraid.le-vert.net/debian/hwraid.le-vert.net.gpg.key"
#    key_fingerprint => "0073C11919A641464163F7116005210E23B3D3B4"
#  }
#
# === Authors
#
# Eigil Obrestad <eigil-git@obrestad.org>
#
# === Copyright
#
# Copyright 2015 Eigil Obrestad, unless otherwise noted.
#
class hpacucli::repo (
  $repository_url  = "http://hwraid.le-vert.net/debian",
  $repositories    = "wheezy main",
  $key_source      = "http://hwraid.le-vert.net/debian/hwraid.le-vert.net.gpg.key",
  $key_fingerprint = "0073C11919A641464163F7116005210E23B3D3B4",
) {
  apt::source { "hpacucli" :
    repos         => $repositories,
    key           => $key_fingerprint,
    key_source    => $key_source,
    key_server    => undef,
    include_src   => false,
  }
}
