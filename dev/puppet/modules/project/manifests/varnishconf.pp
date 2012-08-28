class project::varnishconf inherits varnish {
    File ["varnish.conf"] {
        path => "${varnish::params::configdir}",
        target => $params::varnish_path,
        ensure => link,
        content => undef,
    }
    File [ "varnish.initconf"] {
        content => template("${params::filepath}/project/templates/varnish.erb"),
    }
}
