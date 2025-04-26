source 'https://rubygems.org'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
# Use sqlite3 as the database for Active Record
# Use the Puma web server [https://github.com/puma/puma]
gem 'rails', '~> 8.0.2'
gem 'sqlite3', '>= 2.1'
gem 'puma', '>= 5.0'

# The modern asset pipeline for Rails [https://github.com/rails/propshaft]
# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'propshaft'
gem 'importmap-rails'
gem 'turbo-rails'
gem 'stimulus-rails'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[ windows jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Deploy this application anywhere as a Docker container [https://kamal-deploy.org]
# Add HTTP asset caching/compression and X-Sendfile acceleration to Puma [https://github.com/basecamp/thruster/]
gem 'kamal', require: false
gem 'thruster', require: false

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[ mri windows ], require: 'debug/prelude'

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem 'brakeman', require: false
  gem 'rubocop-rails-omakase', require: false
  gem 'reek', require: false
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'

  # Add a comment summarizing the current schema
  gem 'annotaterb'
end
