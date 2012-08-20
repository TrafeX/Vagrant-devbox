class zendserver::install {

    include apache
    include apt

    file { "zend-server" :
        path   => "/etc/apt/sources.list.d/zend-server.list",
        source => "${params::filepath}/zendserver/files/zend-server.list",
        owner  => "root",
        group  => "root",
        mode  => 0644,
    }

    exec { "zend_key":
        command => "wget http://repos.zend.com/zend.key -O- |apt-key add -",
        path => [
            "/bin",
            "/sbin",
            "/usr/bin",
            "/usr/sbin"
        ]
    }

    exec { "apt_update":
        command => "/usr/bin/apt-get update",
        require	=> [
            File['zend-server'],
            Exec["zend_key"]
        ],
    }

    package { "zend-server-php-${params::php_version}":
        ensure => "installed",
        require	=> Exec["apt_update"]
    }
}
