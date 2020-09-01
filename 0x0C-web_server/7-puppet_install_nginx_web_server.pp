# Install Nginx web server with puppet
package { 'nginx':
  ensure   => 'latest',
  name     => 'nginx',
  provider => 'apt'
}

file { 'index':
  path    => '/var/www/html/index.html',
  mode    => '0664',
  content => 'Holberton School'
}

file_line { '301 Moved Permanently':
  path  => '/etc/nginx/sites-available/default',
  line  => '\tlocation /redirect_me {\n\t\treturn 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;\n\t}',
  after => '^server {'
}

service { 'nginx':
  ensure => running,
  enable => true
}
