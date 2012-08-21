class project::web {
    include apache
    include zendserver

    file { ['/srv', '/srv/http', "/srv/http/${params::project}", "/srv/http/${params::project}/hosts"]:
        ensure => 'directory',
        owner  => 'vagrant',
        group  => 'www-data',
        mode   => 775,
    }
}
