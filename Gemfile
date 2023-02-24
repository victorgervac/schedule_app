source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.2"

gem "active_type"
gem "bcrypt"
gem "bootsnap", require: false
gem "cssbundling-rails"
gem "good_migrations"
gem "jsbundling-rails"
gem "pg", "~> 1.1"
gem "pgcli-rails"
gem "puma", "~> 5.0"
gem "rack-canonical-host"
gem "rails", "~> 7.0.3"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"

group :production do
  gem "postmark-rails"
  gem "sidekiq"
end

group :development do
  gem "annotate"
  gem "brakeman", require: false

  gem "better_errors"
  gem "binding_of_caller"
  gem "bundler-audit", require: false
  gem "erb_lint", require: false
  gem "html2haml"
  gem "htmlbeautifier"
  gem "launchy"
  gem "letter_opener"
  gem "rubocop", require: false
  gem "rubocop-minitest", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem "rufo"
  gem "web-console"
end

group :development, :test do
  gem "byebug"
  gem "dotenv-rails"
  gem "syntax_suggest"
end

group :test do
  gem "capybara"
  gem "capybara-lockstep"
  gem "minitest-ci", require: false
  gem "selenium-webdriver"
  gem "shoulda-context"
  gem "shoulda-matchers"
  gem "webdrivers"
end

# Use Redis for Action Cable
gem "amazing_print"
gem "devise"
gem "faraday"
gem "pry-rails"
gem "redis", "~> 4.0"
