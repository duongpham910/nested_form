source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 5.0.1"
gem "sqlite3"
#gem "puma", "~> 3.0"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.2"
gem "jquery-rails"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"
gem "mysql2"
gem "font-awesome-sass"
gem "bootstrap-sass"
gem "unicorn"
gem "listen", "~> 3.0.5"

group :development, :test do
  gem "byebug", platform: :mri
  gem "pry-rails"
  gem "pry-byebug"
  gem "better_errors"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "capistrano"
  gem "capistrano-rails"
  gem "capistrano3-unicorn"
  gem "capistrano-rvm"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
