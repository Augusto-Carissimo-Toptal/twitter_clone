# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.3'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.0.4'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'

# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'active_model_serializers', '~> 0.10.13'
  gem 'bcrypt', '~> 3.1'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'graphql', '~> 2.0'
  gem 'jwt', '~> 2.7'
  gem 'pry', '~> 0.14.1'
  gem 'rails-controller-testing'
  gem 'rspec-rails'
  gem 'rubocop', '~> 1.45'
  gem 'rubocop-graphql', '~> 0.19.0'
  gem 'rubocop-rails', '~> 2.17'
  gem 'rubocop-rspec', '~> 2.18'
  gem 'shoulda', '~> 3.5'
  gem 'redis'
  gem 'sidekiq'
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end