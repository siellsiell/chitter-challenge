$LOAD_PATH.unshift(File.expand_path("../lib", __FILE__))

#require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'
#require './app'

namespace :db do
  task :load_config do
    require "./app"
  end
end
