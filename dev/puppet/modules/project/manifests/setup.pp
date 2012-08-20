class project::setup {

    # Install some default packages
    $default_packages = [ "vim", "strace", "git", "ntp" ]
    package { $default_packages :
        ensure => present,
    }
}
