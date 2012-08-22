class params {

    # Project name
    $project = 'testproject'

    # Vhost
    $host = 'www.project.dev'

    # Apache port
    $apache_port = '80'

    # Database
    $mysql = true
    $dbname = 'project'
    $dbuser = 'project'
    $dbpass = 'secret'

    # PHP
    $php_version = '5.3'

    # @todo: PHPMyAdmin
    $phpmyadmin = true

    # Memcached
    $memcached = true
    $memcached_memory = '64M'

    # Varnish
    # @todo: We want the latest version
    $varnish = true
    $varnish_port = 6081
    $varnish_backendport = 80 # Apache port
    $varnish_path = '/vagrant/dev/varnish'

    # @todo: SOLR
    $solr = false
    $solr_path = ''

    # Other settings
    $timezone = 'Europe/Amsterdam'
    $filepath = '/vagrant/dev/puppet/modules'
}
