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
#   Defaults to https://downloads.linux.hpe.com/SDR/repo/mcp/ubuntu
#
# [*repositories*]
#   Which repos to include.
#   Defaults to "non-free"
#
# [*release*]
#   Which release to install.
#   Defaults to "${::lsbdistcodename}/current"
#
# [*key_source*]
#   Link to the location of the key
#   Defaults to "https://downloads.linux.hpe.com/SDR/hpePublicKey2048_key2.pub"
#
# [*key_fingerprint*]
#   The key fingerprint.
#   Defaults to "9E8C4A25C49408EFA8D09D96E3FE26E774C3A4A2"
#
# === Examples
#
#  class { 'hpacucli::repo':
#    repository_url  => "http://downloads.linux.hpe.com/SDR/repo/mcp"
#    repositories    => "${::lsbdistcodename}/current"
#    key_source      => "http://downloads.linux.hpe.com/SDR/hpePublicKey2048_key1.pub"
#    key_fingerprint => "57446EFDE098E5C934B69C7DC208ADDE26C2B797"
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
  $repository_url  = 'https://downloads.linux.hpe.com/SDR/repo/mcp/ubuntu',
  $repositories    = 'non-free',
  $release         = "${::lsbdistcodename}/current",
  $key_source      = 'https://downloads.linux.hpe.com/SDR/hpePublicKey2048_key2.pub',
  $key_fingerprint = '9E8C4A25C49408EFA8D09D96E3FE26E774C3A4A2',
) {
  apt::source { 'hpmcp':
    location => $repository_url,
    repos    => $repositories,
    release  => $release,
    key      => {
      id     => $key_fingerprint,
      source => $key_source,
    },
  }
}
