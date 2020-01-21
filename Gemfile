source 'https://rubygems.org'

gem 'jekyll', '~> 3.8.6'
gem 'html-proofer', '~> 3.15.1'
gem 'nokogiri', '>= 1.10.4'

group :jekyll_plugins do
  gem 'jekyll-feed', '~> 0.12.1'
  gem 'jekyll-github-metadata', '~> 2.12.0'
  gem 'jekyll-gravatar', '~> 0.1.0'
  gem 'jekyll-redirect-from', '~> 0.15.0'
  gem 'jekyll-relative-links', '~> 0.6.1'
  gem 'jekyll-seo-tag', '~> 2.6.1'
  gem 'jekyll-sitemap', '~> 1.3.0'
  gem 'jemoji', '~> 0.11.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
install_if -> { RUBY_PLATFORM =~ %r!mingw|mswin|java! } do
  gem 'tzinfo', '~> 1.2'
  gem 'tzinfo-data', '~> 1.2019.3'
end

# Performance-booster for watching directories on Windows
gem 'wdm', '~> 0.1.0', :install_if => Gem.win_platform?
