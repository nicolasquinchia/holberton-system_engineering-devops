# Fix user limit
exec {'fix-userlimit':
  path    => '/bin/',
  command => 'sed -i s/holberton/foo/ /etc/security/limits.conf',
}
