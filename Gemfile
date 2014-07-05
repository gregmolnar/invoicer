source 'https://rubygems.org'
require 'yaml'
# Bundle edge Rails instead:
# gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.1'

require 'erb'
database_file = File.join(File.dirname(__FILE__), "config/database.yml")
if File.exist?(database_file)
  database_config = YAML::load(ERB.new(IO.read(database_file)).result)
  adapters = database_config.values.map {|c| c['adapter']}.compact.uniq
  if adapters.any?
    adapters.each do |adapter|
      case adapter
      when 'mysql2'
        gem "mysql2"
      when /postgresql/
        gem "pg"
      else
        warn("Unknown database adapter `#{adapter}` found in config/database.yml, use Gemfile.local to load your own database gems")
      end
    end
  else
    warn("No adapter found in config/database.yml, please configure it first")
  end
else
  warn("Please configure your config/database.yml first")
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.1'

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
gem "ransack", github: 'activerecord-hackery/ransack', branch: "rails-4.1"
gem "polyamorous", github: "activerecord-hackery/polyamorous"
gem "chartkick"
gem 'groupdate'
gem "paperclip", "~> 3.0"
group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
  gem 'quiet_assets'
  gem 'capistrano-rbenv', '~> 1.x'
  gem 'capistrano', '~> 2.15.x'
end

group :development, :test do
  gem "factory_girl_rails", ">= 4.1.0"
  gem "capybara"
  gem 'poltergeist'
  gem 'guard-minitest', '~> 2.0.0'
  gem "rb-fsevent", "~> 0.9.3"
end
