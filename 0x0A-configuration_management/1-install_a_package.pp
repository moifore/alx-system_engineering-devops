# Install the puppet-lint package
exec { 'install python packages':
     command => '/usr/bin/ap-get -y install flask -v 2.1.0',
}
