# Configuring your server with Puppet!
package {'nginx':
    ensure   => 'lastest',
    name     => 'nginx',
    provider => 'apt'
}

file {'html':
    path    => '/var/www/html/index.nginx-debian.html',
    mode    => '0644',
    owner   => 'ubuntu',
    group   => 'ubuntu',
    content => 'Holberton School'
}

file_line { '301 Moved_perm':
  path  => '/etc/nginx/sites-available/default',
  line  => '\trewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
  after => '^server {'
}

service { 'nginx':
  ensure => running,
  enable => true
}
