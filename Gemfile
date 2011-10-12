source "http://rubygems.org"

gem "builder"
gem "rdiscount"
gem "heroku"
gem "sass", :require => "sass/plugin/rack"

if ENV['RACK_ENV'] == "development"
  gem "toto", :path => "../od_toto"
else
  gem "toto", :git => "git://github.com/orthodoc/toto.git"
end

group :development do
  gem "rake"
  gem "thin"
end

## inspired by git://github.com/aendruk/kahve.git

