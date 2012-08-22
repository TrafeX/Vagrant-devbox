class project::web {

    $apache_port = $params::apache_port
    include apache
    include zendserver

    file { ['/srv', '/srv/http', "/srv/http/${params::project}", "/srv/http/${params::project}/hosts"]:
        ensure => 'directory',
        owner  => 'vagrant',
        group  => 'www-data',
        mode   => 775,
    }

    package { "libaugeas-ruby": ensure => installed }

    # @todo: Set development values to our php.ini
#    augeas { 'set-php-ini-values':
#        context => '/files/usr/local/zend/etc/php.ini',
#        changes => [
#            'set PHP/error_reporting "E_ALL | E_STRICT"',
#            'set PHP/display_errors On',
#            'set PHP/display_startup_errors On',
#            'set PHP/html_errors On',
#            'set Date/date.timezone Europe/Amsterdam',
#        ],
#        require => [ Class['zendserver'], Package["libaugeas-ruby"] ],
#        notify  => Service['apache'],
#    }

    Package["libaugeas-ruby"] -> Augeas <| |>
}
