source 'https://rubygems.org'

gem 'rails', '3.2.11'

gem 'json'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'haml-rails'

gem "less-rails"
gem "twitter-bootstrap-rails"

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'uglifier', '>= 1.0.3'
end

platform :ruby do
  gem 'thin'
  gem 'therubyracer', '0.10.2', :platform => :ruby

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
  gem 'therubyrhino'

  group :postgresql do
    gem 'activerecord-jdbcpostgresql-adapter'
  end

  group :test, :development do
    gem 'activerecord-jdbcsqlite3-adapter'
    gem 'warbler'
  end
end
