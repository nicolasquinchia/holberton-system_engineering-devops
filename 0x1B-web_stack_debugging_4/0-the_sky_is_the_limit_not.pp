# Fix requests limit on nginx
exec { 'fix-ulimit-for-nginx':
  path    => '/bin/',
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
}

exec { 'nginx-restart':
  path    => '/usr/bin/',
  command => 'service nginx restart',
}
