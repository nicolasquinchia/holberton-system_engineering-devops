# Create a file with certain requirements
file { '/tmp/holberton':
  path    => 'file',
  mode    => '0744',
  owner   => www-data,
  group   => www-data,
  content => 'I love Puppet',
}
