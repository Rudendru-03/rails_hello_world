# config valid for current version and patch releases of Capistrano
lock "~> 3.19.2"

set :application, 'hello_world'
set :repo_url, "https://github.com/Rudendru-03/rails-hello.git"  # Replace with your Git repo URL

set :deploy_to, '/var/www/hello_world'
append :linked_files, "config/database.yml", "config/master.key"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system", "vendor", "storage"

set :keep_releases, 5
set :passenger_restart_with_touch, true