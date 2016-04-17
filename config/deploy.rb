# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'vrmoment-2.0'
set :repo_url, 'git@github.com:JohnWuTripMoment/vrmoment-2.0.git'

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, '/var/www/my_app_name'

# Default value for :scm is :git
set :scm, :git

# permission for /home/apps/tmp
set :tmp_dir, "/home/apps/tmp"

# set :rvm_type, :ubuntu
set :rvm_custom_path, '/home/ubuntu/.rvm'  # only needed if not detected

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/application.yml')
set :linked_files, fetch(:linked_files, []).push('config/database.yml')

# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, []).push('bin', 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

## set :whenever_identifier, ->{ "#{fetch(:application)}_#{fetch(:stage)}" }
# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 5

# enable for passenger restart
set :passenger_restart_with_touch, true

namespace :deploy do

  # desc 'Restart application'
  # task :restart do
  #   on roles(:app), in: :sequence, wait: 5 do
  #     "touch %RAILS_ROOT%/tmp/restart.txt"
  #   end
  # end

  before 'deploy:restart', 'letsencrypt:generate'

  after :publishing, 'deploy:restart'
  
  after :finishing, 'deploy:cleanup'

end
