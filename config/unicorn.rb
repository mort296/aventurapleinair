web_dir = "/var/www/aventurapleinair"

worker_processes 2
working_directory "#{web_dir}"

# listen on both a Unix domain socket and a TCP port,
# we use a shorter backlog for quicker failover when busy
listen "/var/www/aventurapleinair/tmp/sockets/aventurapleinair.socket", :backlog => 64

preload_app false

# nuke workers after 30 seconds instead of 60 seconds (the default)
timeout 30

# feel free to point this anywhere accessible on the filesystem
user 'root', 'root'

pid "/var/www/aventurapleinair/tmp/sockets/aventurapleinair.pid"
stderr_path "#{web_dir}/log/unicorn.stderr.log"
stdout_path "#{web_dir}/log/unicorn.stdout.log"
