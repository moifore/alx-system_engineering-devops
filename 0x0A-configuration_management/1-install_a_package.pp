# Install the puppet-lint package
exec { 'install python packages':
     command   => 'pip3 install flask -v 2.1.0',
     path => ['/usr/bin/'],
  }
