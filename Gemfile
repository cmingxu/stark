source 'http://gems.ruby-china.com'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'bootsnap', require: false
gem 'rails', '~> 5.2.3'
gem 'sqlite3'
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'therubyracer', platforms: :ruby
gem 'ruby-pinyin'
gem 'friendly_id', '~> 5.1'
gem 'annotate'
gem 'kaminari'
gem 'carrierwave', '~> 1.0'
gem "mini_magick"
gem 'simple_form'
gem "bower-rails", "~> 0.11.0"
gem "font-awesome-rails"
gem 'ransack'
gem 'aasm'
gem 'ace-rails-ap'
gem 'pundit'
gem 'base32'
gem 'hover-rails'
gem "haml-rails"
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'zookeeper'
gem 'httparty'
gem 'awesome_print'
gem 'ledermann-rails-settings'
gem 'sidekiq'
group :development, :test do
  gem 'byebug', platform: :mri
  gem "better_errors"
  gem 'faker', git: 'https://github.com/stympy/faker.git'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rspec-rails', '~>3.8'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
