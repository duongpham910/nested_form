# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :application, "nested_form"
set :repo_url, "git@github.com:duongpham910/nested_form.git"
set :bundle_binstubs, nil
set :branch, "develop"

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/var/www/html/#{fetch(:application)}"


# Default value for :linked_files is []
set :linked_files, fetch(:linked_files, [])
  .push("config/database.yml", "config/secrets.yml")
# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, [])
  .push("log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system", "vendor/bundle")

# Default value for keep_releases is 5
set :keep_releases, 5

after "deploy:publishing", "deploy:restart"

# Khởi động lại unicorn sau khi deploy
namespace :deploy do
  task :restart do
    invoke "unicorn:restart"
  end
end
