# /support/puppet/manifests/params.pp
class params {
    # Hostname of the virtualbox (make sure this URL points to 127.0.0.1 on your local dev system!)
    $host = 'www.project.dev'

    # Original port (don't change)
    $port = '80'

    # Database names (must match your app/config/parameters.ini file)
    $dbname = 'project'
    $dbuser = 'project'
    $dbpass = 'secret'

    $filepath = '/vagrant/dev/puppet/modules'

    $php_version = '5.3'
}
