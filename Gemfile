source 'https://rubygems.org'

gem 'rails', '3.2.9'

gem 'json'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'haml-rails'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'uglifier', '>= 1.0.3'
end

platform :ruby do
  gem 'thin'

  group :production do
    gem 'therubyracer', '0.10.2', :platform => :ruby
  end

  group :postgresql do
    gem 'pg'
  end

  group :test, :development do
    gem 'sqlite3'
  end
end

group :development, :test do
  gem 'rspec-rails'
end

platform :jruby do
  gem 'puma'

  group :production do
    gem 'therubyrhino'
  end

  group :postgresql do
    gem 'activerecord-jdbcpostgresql-adapter'
  end

  group :test, :development do
    gem 'activerecord-jdbcsqlite3-adapter'
    gem 'warbler'
  end
end
