class kibana {

  archive { "kibana":
    ensure   => present,
    url      => "https://download.elasticsearch.org/kibana/kibana/kibana-3.1.0.tar.gz",
    checksum => false,
    target   => "/usr/share/kibana"
  }
  -> file { "/usr/share/kibana3":
    ensure => "/usr/share/kibana/kibana-3.1.0",
  }

  file { "/etc/nginx/sites-enabled/kibana.conf":
    ensure  => "/usr/share/kibana3/sample/nginx.conf",
    notify  => Service["nginx"],
    require => [ Archive["kibana"], File["/usr/share/kibana3"] ],
  }

  file { "/etc/nginx/conf.d/default.conf":
    ensure => absent,
    notify => Service["nginx"],
  }

  class { "::nginx": }

}
