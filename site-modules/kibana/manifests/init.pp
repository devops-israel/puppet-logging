class kibana {
  package { [ "gcc-c++", "ruby-devel" ]: }
  -> vcsrepo { "/usr/share/kibana3":
    ensure   => present,
    provider => git,
    source   => "https://github.com/elasticsearch/kibana",
    revision => "v3.1.0",
  }
  -> class { "::nginx": }
  -> file { "/etc/nginx/conf.d/default.conf":
    ensure => absent,
  }
  -> nginx::resource::vhost { 'kibana':
    www_root => '/var/www/kibana'
  }

}
