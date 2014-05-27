Exec { path => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin' }

node elasticsearch {
  include logging::elasticsearch
}

node logstash {
  include logging::logstash
}

node kibana {
  include logging::kibana
}
