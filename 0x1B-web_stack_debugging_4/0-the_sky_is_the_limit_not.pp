# Fix requests limit on nginx
exec { 'update ULIMIT value':
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
  command => "sed -i 's/15/4096/' /etc/default/nginx",
}

exec { 'nginx restart':
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
  command => 'sudo service nginx restart',
}
