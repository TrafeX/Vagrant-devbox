Vagrant template
================
This Vagrant/Puppet template gives you a VirtualBox Machine with:

* Zend Server
* MySQL
* Vhost for your project
* Memcached
* Varnish
* Solr (soon)

These services can be easily configured with the params file.

Install
=======

* Install vagrant
* Clone this repo
* Run `git submodule update --init --recursive` to update all submodules
* Run `vagrant up`

TODO
====
* Make distro-independent
* Easily configure the amount of memory memcached can use

Resources
=========
I've based this setup on the following resources:

* https://github.com/NoStressCommerceCZ/virtualdev
* http://www.adayinthelifeof.nl/2012/06/29/using-vagrant-and-puppet-to-setup-your-symfony2-environment/


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/TrafeX/vagrant-devbox/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

