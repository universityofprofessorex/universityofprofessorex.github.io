source "https://rubygems.org"

# http://jekyllrb.com/docs/github-pages/
require 'json'
require 'open-uri'
versions =
  begin
    JSON.parse(open('https://pages.github.com/versions.json').read)
  rescue SocketError
    { 'github-pages' => 67 }
  end

gem "jekyll", versions['jekyll']
gem "rake"

gem 'github-pages', versions['github-pages']
gem "jekyll-feed", versions['jekyll-feed']
gem "jekyll-paginate", versions['jekyll-paginate']
gem "jekyll-sitemap", versions['jekyll-sitemap']
gem "jekyll-redirect-from", versions['jekyll-redirect-from']

group :test do
  gem 'rspec', :require => 'spec'
  gem "rubocop"
  gem "rubocop-rake"
  gem "rubocop-rspec"
end

# group :jekyll_plugins do
#   gem "jekyll-feed"
#   gem "jekyll-paginate"
#   gem "jekyll-sitemap"
#   gem "github-pages"
#   gem "jekyll-redirect-from"
# end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1.0" if Gem.win_platform?
