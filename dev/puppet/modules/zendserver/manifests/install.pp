class zendserver::install {

    include apt

    apt::repository { "zend-server":
        url => 'http://repos.zend.com/zend-server/deb',
        distro => 'server',
        repository => 'non-free',
        key => true,
        key_url => 'http://repos.zend.com/zend.key'
    }

    file { "zend-path" :
        path   => "/etc/profile.d/zend.sh",
        source => "${params::filepath}/zendserver/files/zend.sh",
        owner  => "root",
        group  => "root",
        mode   => 0755,
    }

    package { "zend-server-php-${params::php_version}":
        ensure => present,
        require => [
            Apt::Repository["zend-server"],
            File["zend-path"],
        ],
    }
}
