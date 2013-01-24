# == Class: php::pecl::gearman::package
#
# Install the PHP gearman extension
#
# === Parameters
#
# [*version*]
#   The version of gearman to install
#   Could be "latest", "installed" or a pinned verison
#
# [*package*]
#   The package name for gearman
#   For debian it's php5-gearman
#
# [*provider*]
#   The provider used to install php5-gearman
#   Could be "pecl", "apt" or any other OS package provider
#
# === Variables
#
# No variables
#
# === Examples
#
#  include 'php::pecl::gearman::package'
#
#  class {'php::pecl::gearman::package':
#   version => latest
#  }
#
# === Authors
#
# Christian Winther <cw@nodes.dk>
#
# === Copyright
#
# Copyright 2012-2013 Nodes, unless otherwise noted.
#
class php::pecl::gearman::package(
  $version  = $php::pecl::gearman::params::version,
  $package  = $php::pecl::gearman::params::package,
  $provider = $php::pecl::gearman::params::provider
) inherits php::pecl::gearman::params {

  php::pecl::package { 'gearman':
    version  => $version,
    package  => $package,
    provider => $provider
  }

}
