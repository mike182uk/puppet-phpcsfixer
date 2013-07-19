# == Class: phpcsfixer
#
# Puppet module to install PHP CS Fixer (https://github.com/fabpot/PHP-CS-Fixer)
#
# == Parameters
#
# [*install_location*]
#   Location PHP CS Fixer should be installed too
#
# === Examples
#
#  include phpcsfixer
#
#  or
#
#  class { 'phpcsfixer' :
#      install_location => '/usr/bin/php-cs-fixer'
#  }
#
# === Authors
#
# Michael Barrett <mike182uk@gmail.com>
#
# === Copyright
#
# Copyright 2013 Michael Barrett
#
class phpcsfixer (
    $install_location = $phpcsfixer::params::install_location
) inherits phpcsfixer::params {

    exec { 'download-php-csfixer' :
        command => "wget http://cs.sensiolabs.org/get/php-cs-fixer.phar -O ${install_location}",
        creates => $install_location,
        path => ['/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/'];
    }

    file { $install_location :
        mode => '0755',
        owner => root,
        group => root,
        require => Exec['download-php-csfixer']
    }

}

