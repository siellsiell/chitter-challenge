$LOAD_PATH.unshift(File.expand_path("../lib", __FILE__))

require 'sinatra'
require './app'

run Chitter
