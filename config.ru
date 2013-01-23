require 'bundler'
Bundler.setup

require 'toto'

# Rack config
use Rack::Static, :urls => ['/css', '/js', '/images', '/favicon.ico', '/humans.txt'], :root => 'public'
use Rack::CommonLogger

if ENV['RACK_ENV'] == 'development'
  use Rack::ShowExceptions
end

#
# Create and configure a toto instance
#
toto = Toto::Server.new do
  #
  # Add your settings here
  # set [:setting], [value]
  # 
   set :author,    "Biswajit Dutta Baruah"                   # blog author
   set :title,     Dir.pwd.split('/').last                   # site title
   set :root,      "about"                                   # page to load on /
   set :date,      lambda {|now| now.strftime("%d/%m/%Y") }  # date format for articles
   set :markdown,  :smart                                    # use markdown + smart-mode
   set :disqus,    false                                     # disqus id, or false
   set :summary,   :max => 1000, :delim => /~\n/             # length of article summary and delimiter
   set :ext,       'txt'                                     # file extension for articles
   set :cache,      31536000                                 # cache duration, in seconds

  set :date, lambda {|now| now.strftime("%B #{now.day.ordinal} %Y") }
end

# Redirect www to non-www
require "rack-rewrite"
if ENV['RACK_ENV'] == 'production'
  use Rack::Rewrite do
    r301 %r{.*}, 'http://www.orthodoc.in$&', :if => Proc.new {|rack_env| rack_env['SERVER_NAME'] != 'www.orthodoc.in'}
  end
end

# Setting up rack cache with memcache and dalli
require 'rack/cache'
require 'dalli'

if ENV['RACK_ENV'] == 'production'
  use Rack::Cache,
    :verbose        => true,
    :metastore      => Dalli::Client.new,
    :entitystore    => 'file:tmp/cache/rack/body',
    :allow_reload   => false
end

run toto


