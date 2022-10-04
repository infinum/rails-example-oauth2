# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'
gem 'rails', '~> 7.0.3', '>= 7.0.3.1'

gem 'bootsnap', require: false
gem 'bugsnag'
gem 'figaro'
gem 'httplog'
gem 'importmap-rails'
gem 'omniauth-oauth2'
gem 'omniauth-rails_csrf_protection', '~> 1.0'
gem 'pg', '~> 1.1'
gem 'pry-byebug'
gem 'pry-rails'
gem 'puma', '~> 5.0'
gem 'slim'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'strong_migrations'
gem 'turbo-rails'

group :development, :test do
  gem 'debug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'annotate'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'bullet'
  gem 'overcommit', require: false
end

group :test do
  gem 'rspec-rails'
end

group :ci do
  gem 'brakeman', require: false
  gem 'bundler-audit', require: false
  gem 'rubocop-infinum', require: false
  gem 'slim_lint', require: false
end
