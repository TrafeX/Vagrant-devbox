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

    package { "augeas-tools":   ensure => installed }
    package { "libaugeas-dev":  ensure => installed }
    package { "libaugeas-ruby": ensure => installed }

    # @todo: Fix augeas or use editfile
#    augeas { 'set-php-ini-values':
#        context => '/files/usr/local/zend/etc/php.ini',
#        changes => [
#            'set PHP/error_reporting "E_ALL | E_STRICT"',
#            'set PHP/display_errors On',
#            'set PHP/display_startup_errors On',
#           'set PHP/html_errors On',
#            'set Date/date.timezone Europe/Amsterdam',
#        ],
#        require => [
#            Package["augeas-tools"],
#            Package["libaugeas-dev"],
#            Package["libaugeas-ruby"],
#            Class['zendserver'],
#        ],
#        notify  => Service['apache'],
#    }

#    Package["libaugeas-ruby"] -> Augeas <| |>
}
