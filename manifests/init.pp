# == Class: phpcsfixer
#
# Puppet module to install PHP CS Fixer (https://github.com/fabpot/PHP-CS-Fixer)
#
# === Examples
#
#  include phpcsfixer
#
# === Authors
#
# Michael Barrett <mike182uk@gmail.com>
#
# === Copyright
#
# Copyright 2013 Michael Barrett
#
class phpcsfixer {

    exec { 'download-php-csfixer':
        command => 'wget http://cs.sensiolabs.org/get/php-cs-fixer.phar -O /usr/local/bin/php-cs-fixer',
        creates => '/usr/local/bin/php-cs-fixer',
        path => ['/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/'];
    }

    file { '/usr/local/bin/php-cs-fixer' :
        mode => '0755',
        owner => root,
        group => root,
        require => Exec['download-php-csfixer']
    }

}

