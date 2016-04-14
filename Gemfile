source 'https://rubygems.org'
ruby '2.3.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
# Use sqlite3 as the database for Active Record
#gem 'sqlite3'
#PostgreSQL is supported by heroku
gem 'pg', '~> 0.18.4'
# Use SCSS for stylesheets
gem 'bootstrap-sass', '~> 3.3.6'
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass-extras'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# amazon web services 
gem 'aws-sdk', '~> 2.2', '>= 2.2.34'
gem 'carrierwave', '~> 0.11.0'
gem 'mini_magick', '~> 4.5', '>= 4.5.1'
gem 'fog', '~> 1.38'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
#Font Awesome, SASS version, with assets pipeline, for Rails 3.1+
gem 'font-awesome-sass', '~> 4.5.0'
# Devise gem for login control
gem 'devise', '~> 3.5', '>= 3.5.6'
gem 'devise-bootstrap-views'
# Great Ruby dubugging companion: pretty print Ruby objects to visualize their structure. Supports custom object formatting via plugins
gem 'awesome_print', '~> 1.6', '>= 1.6.1'
#Hassle-free construction of those pesky gravatar.com urls, with out-of-the-box support for Rails 3
gem 'gravatarify', '~> 3.0.0'
# This gem allows simple integration between ActionMailer and SendGrid
gem 'sendgrid', '~> 1.2', '>= 1.2.4'
# Simple, efficient background processing for Ruby.
#gem 'sidekiq'
# Send Devise's emails in background. Supports Backburner, Resque, Sidekiq
#gem 'devise-async', '~> 0.10.1'
# puma is the multithread webserver on heroku
#gem 'puma'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production do
  #Heroku support gem
  gem 'rails_12factor', '~> 0.0.3'
end