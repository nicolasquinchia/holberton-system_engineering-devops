# Manifest that kills certain process
exec {'killmenow':
  path    => '/usr/bin',
  command => 'pkill killmenow',
}
