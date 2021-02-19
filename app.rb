require 'models/peep'
require "sinatra/activerecord"
require 'sinatra/base'

class Chitter < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  PEEPS = ["Peep 1", "Peep 2"]

  get '/' do
    redirect '/feed'
  end

  get '/feed' do
    @peeps = Peep.all
    erb :feed
  end

  post '/post' do
    Peep.create(content: params[:peep])
    redirect '/feed'
  end

end
