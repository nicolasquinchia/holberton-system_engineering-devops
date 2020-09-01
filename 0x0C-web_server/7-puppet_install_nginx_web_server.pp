# Configuring your server with Puppet!
package { 'nginx':
    ensure   => 'lastest',
    name     => 'nginx',
    provider => 'apt'
}

file { 'html':
    path    => '/var/www/html/index.html',
    mode    => '0664',
    content => 'Holberton School'
}

file_line { '301 Moved_perm':
  path  => '/etc/nginx/sites-available/default',
  line  => '\tlocation /redirect_me {\n\treturn 301 https://www.youtube.com/watch?v=QH2-TGUlwu4; \n\t}',
  after => '^server {'
}

service { 's_nginx':
  ensure => running,
  enable => true
}
