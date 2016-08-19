source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development do
  gem 'sqlite3'
  gem 'better_errors' #Enhanced Rails error page with built in rails console
  gem 'binding_of_caller' #required by better_errors
  gem 'quiet_assets' #Less noisy but easier to debug server output
  gem 'letter_opener'
  gem 'letter_opener_web', '~> 1.2.0'
  gem 'launchy'
end

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'bootstrap-sass'
gem 'figaro'
gem 'pry'
gem 'devise'
gem 'bcrypt'

group :development, :test do
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'rspec-rails'
  gem 'shoulda'
  gem 'faker'
  gem 'factory_girl_rails'
end
