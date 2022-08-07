source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.6'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.6'

# Using enviroment variables
gem 'dotenv-rails', groups: %i[development test]

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

# For authentication
gem 'active_model_serializers'
gem 'jwt'

# For translating to Japanese
gem 'rails-i18n'

# For describing information about column connected to each scheme when db's migrating
gem 'annotate'

# For making rails console prettier
gem 'awesome_print'

# For using Static Type in ruby
gem 'sorbet', :group => :development
gem 'sorbet-runtime'
gem 'tapioca', require: false, :group => :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'pry-rails' # rails console(もしくは、rails c)でirbの代わりにpryを使われる
  gem 'pry-doc' # methodを表示
  gem 'pry-byebug' # デバッグを実施(Ruby 2.0以降で動作する)
  gem 'pry-stack_explorer' # スタックをたどれる
  gem 'ruby-debug-ide'
  gem "debase"
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'solargraph'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'prettier'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
