require 'yaml'

env = ENV["RAILS_ENV"] || 'development'
dbconfig = File.expand_path("../config/database.yml", __FILE__)

raise "You need to configure config/database.yml first" unless File.exists?(dbconfig)
require 'erb'
config = YAML.load(ERB.new(File.read(dbconfig)).result)

environment = config[env]

adapter = environment['adapter'] if environment
raise "Please set an adapter in database.yml for #{env} environment" if adapter.nil?
case adapter
when 'sqlite3'
  gem 'sqlite3'
when 'postgresql'
  gem 'pg'
when 'mysql2'
  gem 'mysql2'
else
  raise "Not supported database adapter: #{adapter}"
end

source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use sqlite3 as the database for Active Record
gem 'sqlite3'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
gem 'jquery-turbolinks'
gem 'jquery-ui-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem 'devise'
gem 'bootstrap-sass', '~> 2.3.2'
gem 'simple-navigation'
gem 'simple_form'
gem 'bootstrap-datepicker-rails'
gem 'inherited_resources'
gem 'wkhtmltopdf-binary'
gem 'wicked_pdf'

gem 'turn', :group => :test
group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
  gem 'quiet_assets'
end

group :development, :test do
  gem "factory_girl_rails", ">= 4.1.0"
  gem "capybara"
  gem 'poltergeist'
  gem 'guard-minitest', '~> 2.0.0'
  gem "rb-fsevent", "~> 0.9.3"
end
