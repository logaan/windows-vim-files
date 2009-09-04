require "net/ssh"

def virtual_hosts(server, vhost_dir = "/etc/httpd/conf.d/")
  server_names = ""

  Net::SSH.start(server, 'capistrano', :password => "k1tc4t") do |ssh|
    server_names = ssh.exec!("find #{vhost_dir} -name '*.conf' | xargs grep 'ServerName'")
  end

  server_names.split("\n").map{ |line| line.gsub(/.*ServerName\s*/, '') }
end

virtual_hosts("demo")

