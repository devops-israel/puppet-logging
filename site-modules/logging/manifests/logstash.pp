class logging::logstash {

  class { "::logstash": }

  logstash::configfile {
    "input-log4j":
      source => "puppet:///modules/logging/logstash/input-log4j.conf",
      ;
    "input-syslog":
      source => "puppet:///modules/logging/logstash/input-syslog.conf",
      ;
    "output-elasticsearch":
      source => "puppet:///modules/logging/logstash/output-elasticsearch.conf",
      ;
  }

}
