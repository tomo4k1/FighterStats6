# backend/Dockerfile
FROM ruby:3.1

# 必要なシステムパッケージ（例：build-essential, libpq-dev, nodejs, yarn など）のインストール
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs yarn

WORKDIR /app

# Gemfile と Gemfile.lock をコピーして bundle install
COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install

# プロジェクトの全ファイルをコピー
COPY . .

# Rails サーバーのポートを公開
EXPOSE 3000

# Rails サーバー起動時のコマンド
CMD ["rails", "server", "-b", "0.0.0.0"]
