source "http://rubygems.org"

## borrowed from git://github.com/aendruk/kahve.git
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

