source 'https://rubygems.org'

ruby '2.4.6'
# Use Puma as the app server
gem 'puma', '~> 3'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.2'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
gem 'font-awesome-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'json', '2.0.2'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# gem 'sdoc', '>= 0.4.0', group: :doc
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'rspec-rails', '~> 3.5'
  # gem 'selenium-webdriver'
end

group :development do
  gem 'annotate', require: false

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'listen', '~> 3.0.5'
  # gem 'oink'
  gem 'rubocop', require: false

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # `thin start --ssl`, in any ENV run `rails s thin`
  # gem 'thin'

  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
end

group :test do
  gem 'capybara', '~> 2.4.4'
  gem 'phantomjs', '~> 2', require: 'phantomjs/poltergeist'
  gem 'poltergeist', '~> 1.6.0'
end

# group :production do
#   gem 'pg'
#   gem 'sqlite3'
# end

gem 'httparty', '>=0.13.5'
