# Fix requests limit on nginx
exec { 'update_ULIMIT_value':
  path    => '/usr/local/bin:/bin/',
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
}

exec { 'nginx_restart':
  path    => '/usr/bin/',
  command => 'service nginx restart',
}
