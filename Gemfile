source 'https://rubygems.org'

gem 'rails',        '5.0.0.1'
gem 'dotenv-rails', '2.2.2'
gem 'ransack',      '1.8.8'
gem 'kaminari',     '1.1.1'
gem 'puma',         '3.11.4'
gem 'sass-rails',   '5.0.7'
gem 'uglifier',     '4.1.9'
gem 'coffee-rails', '4.2.1'
gem 'jquery-rails', '4.3.1'
gem 'turbolinks',   '5.0.1'
gem 'jbuilder',     '2.4.1'
gem 'pg',           '0.19.0'
gem 'google-analytics-rails', '1.1.0'
gem 'meta-tags',    '2.4.0'
gem 'config',       '1.4.0'
gem 'bootstrap-sass', '~> 3.3.6'

group :development, :test do
  gem 'sqlite3', '1.3.11'
  gem 'byebug',  '9.0.0', platform: :mri
end

group :development do
  gem 'web-console',           '3.1.1'
  gem 'listen',                '3.0.8'
  gem 'spring',                '1.7.2'
  gem 'spring-watcher-listen', '2.0.0'
end

group :test do
  gem 'rails-controller-testing'
  gem 'minitest-reporters'
  gem 'guard'
  gem 'guard-minitest'
end

group :production, :staging do
  gem 'rails_12factor',       '0.0.2'
end

# Windows環境ではtzinfo-dataというgemを含める必要があります
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
