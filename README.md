# README

### Set UP

1. Clone this repository
2. (if you want to create your env from scratch using this repo) run `docker-compose run api rails new . --api --database=postgresql`
3. `docker-compose up -d`

### Explanation about Setup Command

- `docker-compose run api rails new . --api --database=postgresql`
  At this time, we will use `Gemfile` set up by me so I don't use the `--force` option on set up command

### Attention while developing

- `bundle install`
  Since we manage `gem` files in volumes to continuously keep them, we have to use `docker-compose run` when we install gem with bundler.
  The reason why is `docker-compose build` doesn't connect gem files to volumes.

- Server Starting
  As this app uses 'ruby-debug-ide', we have to do oneaction after `docker-compose up -d`.
  Push Command + Shift + P(if you use Visual Studio Code) and select `Debug: Start Debugging`
  Then, server is staring and you can debug wherever you want to stop.

- Annotating routes
  When you want to see the list of URLs, you can run `bundle exec rake annotate_routes`

- Editing codes
  If you are already familiar with Rails Project, you will be surprisided at the behavior that any changes aren't reloaded.
  For coding faster, you can add this code in `config/environments/development.rb`
  ```
        config.file_watcher = ActiveSupport::FileUpdateChecker
  ```
  When you develop rails with docker, you have to restart container every time you change file such as controllers, but the above code senses change and they will be reloaded

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions 
