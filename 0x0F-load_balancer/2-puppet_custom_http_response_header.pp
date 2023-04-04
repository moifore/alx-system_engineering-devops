# Adds custom HTTP header to /etc/nginx/sites-available/default using Puppet.
exec { 'command':
  command  => 'apt-get -y update;
  apt-get -y install nginx;
  sudo sed -i "/listen 80 default_server;/a add_header X-Served-By $HOSTNAME;" /etc/nginx/sites-available/default;
  sudo systemctl restart nginx',
  provider => shell,
}
