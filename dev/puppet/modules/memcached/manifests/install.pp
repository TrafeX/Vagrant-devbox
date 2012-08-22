class memcached::install {

    package { "memcached":
        ensure => present
    }

    # @todo: set correct memory usage for memcached

    # @todo: if zend-server, then zend-server-libmemcached
    #package { "zend-server-php-${params::php_version}":
    #    ensure => "installed",
    #    require	=> Exec["apt_update"]
    #}
}
