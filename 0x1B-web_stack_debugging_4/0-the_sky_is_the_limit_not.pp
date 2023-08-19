# Increases traffic an Nginx server can handle.

exec { 'change workers':
  command  => "sed -i 's/processes 4/processes 7/' /etc/nginx/nginx.conf && sudo service nginx restart",
  provider => shell
}
