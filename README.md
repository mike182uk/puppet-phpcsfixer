# Puppet PHP CS Fixer

Puppet module to install [PHP CS Fixer](https://github.com/fabpot/PHP-CS-Fixer)

Download from [Puppet Forge](http://forge.puppetlabs.com/mike182uk/phpcsfixer)

Installs [PHP CS Fixer](https://github.com/fabpot/PHP-CS-Fixer) to `/usr/local/bin/php-cs-fixer`

Sets permissions to `0755`

Sets owner to `root:root`

### Useage

Include the phpcsfixer class in your puppet manifest

```
include phpcsfixer
```
