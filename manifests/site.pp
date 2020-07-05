node default {
  file {'/root/REDAME':
  ensure  => file,
  content => 'This is a readme',
  owner   => 'root',
  }
  file {'/root/README':
    owner => 'root',
  }
}
