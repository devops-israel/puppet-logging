Exec { path => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin' }

node elasticsearch {
  include logging::elasticsearch
  include logging::kibana
}

node logstash {
  include logging::logstash
}
