class memcached::service {

    service { "memcached":
        ensure => "running",
        hasstatus => true,
        hasrestart => true,
        enable => "true",
        require => Class["memcached::install"],
    }
}
