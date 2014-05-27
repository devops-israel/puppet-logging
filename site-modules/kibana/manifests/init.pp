class kibana {
  package { [ "gcc-c++", "ruby-devel" ]: }
  -> class { "::nginx": }
}
