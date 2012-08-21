# Set default path for Exec calls
Exec {
    path => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ]
}

node default {
    include params
    include project


    # Project specific config
    file { "/srv/http/${params::project}/hosts/${params::host}":
      ensure => link,
      target => '/vagrant',
    }

    apache::vhost { $params::host:
        docroot => "/srv/http/${params::project}/hosts/${params::host}/public",
        docroot_create => true,
        docroot_owner => 'vagrant',
        docroot_group => 'www-data' # @todo: make os-independent
    }

}
