source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

gem 'rails', '~> 6.0.4', '>= 6.0.4.4'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'

gem 'devise'
gem 'devise-jwt'
gem 'fast_jsonapi'

gem 'bootsnap', '>= 1.4.2', require: false

gem 'rack-cors'

group :development, :test do
  gem 'faker'
  gem 'factory_bot_rails'
  gem 'rspec-rails', '~> 5.0.0'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
