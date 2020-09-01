# frozen_string_literal: true

source 'https://rubygems.org'

# TODO: We pretty much just use active record and active mailer, do we need rails?
gem 'mysql2'
gem 'rails', '~> 5.2'

# Rails dependencies
gem 'bootsnap'
gem 'puma'

# TODO: COnsider switching to Bunny if possible
gem 'amqp', '~> 1.5'
gem 'mysql-binuuid-rails'

# We use a special version of hashie to bypass rails protected attributes.
# Consider removing Hashie entirely
gem 'hashie-forbidden_attributes'
gem 'migration_comments'
gem 'rest-client'

# For JSON API support
# gem 'jsonapi-rails'
# gem 'jsonapi_errorable'
# gem 'jsonapi_suite'
# gem 'jsonapi_swagger_helpers', require: false
# Used by swagger to generate docs
gem 'jsonapi_spec_helpers', require: false
gem 'kaminari' # Pagination. Used by jsonapi_suite
gem 'rack-cors', require: 'rack/cors'
gem 'jsonapi-resources', '0.10.0.beta8'

group :test, :development do
  gem 'database_cleaner'
  # Easier testing of AMQP client
  gem 'factory_bot_rails'
  gem 'pry'
  gem 'pry-byebug', platform: :mri
  gem 'rspec-rails'
  gem 'simplecov', require: false
  gem 'swagger-diff', '~> 1.1'
end

group :development do
  gem 'guard'
  gem 'guard-bundler', require: false
  gem 'guard-rspec', require: false
  gem 'rubocop'
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'rubocop-rspec', require: false
  gem 'travis'
end

group :deployment do
  gem 'psd_logger', github: 'sanger/psd_logger'
end
