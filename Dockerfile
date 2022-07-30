FROM ruby:2.7.6

ENV LANG=C.UTF-8 \
  TZ=Asia/Tokyo

RUN pwd
# rootディレクトリを作成
RUN mkdir /rails_app
# 作成したroot dirをworking directry として指定
WORKDIR /rails_app
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
# ローカルのyGemfileをコンテナ内にコピー
COPY Gemfile /rails_app/Gemfile
COPY Gemfile.lock /rails_app/Gemfile.lock
RUN gem install bundler:1.7.3 && bundle install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000 1234 26162

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]

