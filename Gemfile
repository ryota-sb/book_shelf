source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.5'

gem 'rails',      '~> 6.0.1'
gem 'mysql2'
gem 'puma',       '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'webpacker',  '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder',   '~> 2.7'
gem 'bcrypt',     '~> 3.1.7'
gem 'bootsnap',   '>= 1.4.2', require: false
gem 'faker'
gem 'kaminari'
gem 'rails-i18n'
gem 'carrierwave'
gem 'pry-rails'
gem 'font-awesome-rails'


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'foreman'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

group :production, :staging do
  # gem 'unicorn', '5.4.1'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
