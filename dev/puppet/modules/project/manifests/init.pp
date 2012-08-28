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
        include project::varnishconf
    }
    if $params::solr {
        class { "solr": }
    }
}
