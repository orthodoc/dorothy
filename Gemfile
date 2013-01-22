source "http://rubygems.org"

## borrowed from git://github.com/aendruk/kahve.git
gem "builder"
gem "rdiscount"
gem "heroku"
gem "thin"
gem "rack-rewrite"
gem "rack-cache"
gem "dalli"

if ENV['RACK_ENV'] == "development"
  gem "toto", :path => "../toto"
else
  gem "toto", :git => "git://github.com/orthodoc/toto.git"
end

group :development do
  gem "rake"
  gem "sass","~>3.2", :require => "sass/plugin/rack"
  gem "guard"
  gem "guard-livereload"
  gem "rb-inotify", "~>0.8.8"
  gem "shotgun"
  gem "guard-sass"
end

