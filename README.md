# Puppet PHP CS Fixer

Puppet module to install [PHP CS Fixer](https://github.com/fabpot/PHP-CS-Fixer)

Download from [Puppet Forge](http://forge.puppetlabs.com/mike182uk/phpcsfixer)

### Details

Installs [PHP CS Fixer](https://github.com/fabpot/PHP-CS-Fixer) to `/usr/local/bin/php-cs-fixer` (this can be overriden using the `install_location` parameter)

Sets permissions to `0755`

Sets owner to `root:root`

### Usage

Include the phpcsfixer class in your puppet manifest

```
include phpcsfixer
```

To specify the location that PHP CS Fixer will be installed set the `install_location` parameter when including the class in your manifest

```
class { 'phpcsfixer' :
  install_location => '/usr/bin/php-cs-fixer'
}
```

