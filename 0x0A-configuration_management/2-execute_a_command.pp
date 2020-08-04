# Manifest that kills certain process
exec {'killmenow':
  path    => '/usr/bin/env',
  command => 'pkill killmenow',
}
