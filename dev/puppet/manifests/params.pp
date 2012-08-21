class params {

    # Project name
    $project = 'testproject'

    # Vhost
    $host = 'www.project.dev'

    # Original port (don't change)
    $port = '80'

    # Database names (must match your app/config/parameters.ini file)
    $dbname = 'project'
    $dbuser = 'project'
    $dbpass = 'secret'

    # PHP
    $php_version = '5.3'

    # @todo: PHPMyAdmin
    $phpmyadmin = true

    # @todo: Memcached
    $memcached = true
    $memcached_memory = '64M'

    # @todo: Varnish
    $varnish = true
    $varnish_path = ''

    # @todo: SOLR
    $solr = true
    $solr_path = ''


    # Other settings
	$timezone = "Europe/Amsterdam"
    $filepath = '/vagrant/dev/puppet/modules'
}
