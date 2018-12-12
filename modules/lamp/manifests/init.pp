class lamp {
    package { 'httpd':
      ensure => installed,
    }
    package { 'php':
      ensure => installed,
    }
    package { 'mariadb-server':
      ensure => installed,
    }
    service { 'mariadb':
      ensure => running,
    }
    file { '/var/www/html/info.php':
      ensure => file,
      content => '<?php phpinfo(); ?>',
      require => Package['httpd'],
    }
}
