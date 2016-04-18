source 'https://rubygems.org'

gem 'rails', '4.2.5'

# assets
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem "font-awesome-rails"

# layout
gem "slim-rails"

# https
gem 'letsencrypt_plugin'

# SEO
gem 'meta-tags'

# Ruby cron jobs
gem 'whenever', :require => false

gem 'sdoc', '~> 0.4.0', group: :doc

group :development do
  gem 'spring'
  gem 'quiet_assets'
  # capistrano
  gem 'capistrano-rails'
  gem 'capistrano-rvm'
  gem 'capistrano-passenger'
  # pry
  gem 'pry-rails'
end

group :staging, :development do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'sqlite3'
  gem 'rspec-rails', '~> 3.0'
end
