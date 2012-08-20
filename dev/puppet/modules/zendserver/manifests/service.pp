class zendserver::service {

    service { "zend-server":
        ensure => "running",
        hasstatus => true,
        hasrestart => true,
        enable => "true",
        require => Class["zendserver::install"],
    }
}
