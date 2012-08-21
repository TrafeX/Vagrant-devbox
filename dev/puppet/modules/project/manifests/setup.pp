class project::setup {

    # Install some default packages
    $default_packages = [ "vim", "strace", "git"]
    package { $default_packages :
        ensure => present,
    }

    # Set correct timezone
    include timezone

    # Use NTP server
    class { 'ntp': }
}
