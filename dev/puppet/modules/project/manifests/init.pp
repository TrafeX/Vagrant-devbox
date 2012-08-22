class project {
    include project::setup
    include project::web

    if $params::mysql {
        include project::sql
    }
    if $params::memcached {
        include memcached
    }
    if $params::varnish {

        $varnish_port = $params::varnish_port
        $varnish_backendport = $params::varnish_backendport

        include varnish

        # @todo add START=yes to /etc/default/varnish

        file { "/etc/varnish":
            ensure => link,
            target => $params::varnish_path,
            notify => Service['varnish'],
            force => true, # needed because the default folder exists
       }
    }
    if $params::solr {
        class { "solr": }
    }
}
