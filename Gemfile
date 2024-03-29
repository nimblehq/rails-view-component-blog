source 'https://rubygems.org'
ruby '2.7.2'

# Backend
gem 'rails', '6.1.3.1' # Latest stable
gem 'pg' # Use Postgresql as database
gem 'puma' # Use Puma as the app server
gem 'image_processing' # A high-level image processing wrapper for libvips and ImageMagick/GraphicsMagick
gem 'pagy' # A pagination gem that is very light and fast
gem 'discard' # Soft deletes for ActiveRecord
gem 'ffaker' # A library for generating fake data such as names, addresses, and phone numbers.
gem 'fabrication' # Fabrication generates objects in Ruby. Fabricators are schematics for your objects, and can be created as needed anywhere in your app or specs.
gem 'bootsnap', require: false # Reduces boot times through caching; required in config/boot.rb
gem 'i18n-js', '3.5.1' # A library to provide the I18n translations on the Javascript
gem "view_component", require: "view_component/engine" # Reusable, testable & encapsulated view components

# Authentications & Authorizations
gem 'devise' # Authentication solution for Rails with Warden
gem 'pundit' # Minimal authorization through OO design and pure Ruby classes

# Assets
gem 'webpacker', '~>5.2.0' # Transpile app-like JavaScript
gem 'sass-rails' # SASS

# Translations
# gem 'devise-i18n' # Translations for Devise
# gem 'rails-i18n', '~> 6.0.0' # Translations for Rails
# gem 'devise-i18n' # Translations for Devise

group :development do
  gem 'foreman' # Manage Procfile-based applications
  gem 'better_errors' # Better error page for Rails and other Rack apps
  gem 'binding_of_caller' # Retrieve the binding of a method's caller in MRI 1.9.2+
  gem 'awesome_print' # Pretty print your Ruby objects with style -- in full color and with proper indentation
  gem 'roadie-rails' # Mailers
  gem 'spring' # Spring speeds up development by keeping your application running in the background.
  gem 'spring-commands-rspec' # This gem implements the rspec command for Spring.
  gem 'spring-watcher-listen', '2.0.1' # Makes Spring watch the filesystem for changes using Listen
end

group :development, :test do
  gem 'bullet' # help to kill N+1 queries and unused eager loading
  gem 'figaro' # Simple Rails app configuration
  gem 'pry-rails' # Call 'binding.pry' anywhere in the code to stop execution and get a debugger console
  gem 'pry-byebug' # Step by step debugging and stack navigation in Pry
  gem 'listen', '3.1.5' # Listens to file modifications
  gem 'letter_opener' # Preview mail in the browser instead of sending.
  gem 'sassc-rails' # Gem to generate scss source maps.
  gem 'brakeman', require: false # A static analysis security vulnerability scanner for Ruby on Rails applications
  gem 'rspec-rails', '~> 4.0.1' # Rails testing engine
  gem 'rubocop', require: false # A Ruby static code analyzer and formatter, based on the community Ruby style guide.
  gem 'rubocop-rails', require: false # A RuboCop extension focused on enforcing Rails best practices and coding conventions.
  gem 'rubocop-rspec', require: false # Code style checking for RSpec files
  gem 'rubocop-performance', require: false # An extension of RuboCop focused on code performance checks.
  gem "view_component_storybook" # Components documentation streamlined

  gem 'undercover' # Report missing test coverage in new changes
  gem 'danger' # Automated code review.
  gem 'danger-eslint' # ESLint
  gem 'scss_lint' # SCSS lint
  gem 'danger-rubocop' # A Danger plugin for Rubocop.
  gem 'danger-rails_best_practices' # Analyze code regarding best practices.
  gem 'danger-reek' # Detect code smell.
  gem 'danger-brakeman_scanner' # Security static analysis scanner in danger.
  gem 'danger-suggester' # Suggest code changes based on configured code formatter.
  gem 'danger-simplecov_json' # Report your Ruby app test suite code coverage in Danger.
  gem 'danger-undercover' # Report missing test coverage of new changes in Danger
end

group :test do
  gem 'rspec-retry' # Retry randomly failing rspec example.
  gem 'capybara', '>= 2.15' # Integration testing
  gem 'webdrivers' # Run Selenium tests more easily with automatic installation and updates for all supported webdrivers
  gem 'database_cleaner' # Use Database Cleaner
  gem 'shoulda-matchers' # Tests common Rails functionalities
  gem 'json_matchers' # Validate the JSON returned by your Rails JSON APIs
  gem 'webmock' # Library for stubbing and setting expectations on HTTP requests in Ruby
  gem 'simplecov', require: false # code coverage analysis tool for Ruby
  gem 'simplecov-json', require: false # JSON formatter for simplecov
  gem 'simplecov-lcov', require: false # LCOV report for undercover
  gem 'vcr' # Gem for recording test suite's HTTP interactions
  gem 'timecop' # Gem for time travel
  gem 'rails-controller-testing' # Gem that allow to use assigns as well ass assert_template
end

group :production do
  gem 'rack-timeout' # Rack middleware which aborts requests that have been running for longer than a specified timeout.
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
