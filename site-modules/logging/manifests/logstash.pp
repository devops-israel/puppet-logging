class logging::logstash {
  class { "::logstash": }
  file { "/etc/logstash/conf.d/input-log4j.conf":
    source => "puppet:///modules/logging/logstash/input-log4j.conf",
    notify => Service["logstash"],
  }
  file { "/etc/logstash/conf.d/input-syslog.conf":
    source => "puppet:///modules/logging/logstash/input-syslog.conf",
    notify => Service["logstash"],
  }
  file { "/etc/logstash/conf.d/output-elasticsearch.conf":
    source => "puppet:///modules/logging/logstash/output-elasticsearch.conf",
    notify => Service["logstash"],
  }
}
