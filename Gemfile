source "http://rubygems.org"

## borrowed from git://github.com/aendruk/kahve.git
gem "builder"
gem "rdiscount"
gem "heroku"
gem "thin"

if ENV['RACK_ENV'] == "development"
  gem "toto", :path => "../toto"
else
  gem "toto", :git => "git://github.com/orthodoc/toto.git"
end

group :development do
  gem "rake"
  gem "rb-inotify"
  gem "sass", :require => "sass/plugin/rack"
end

