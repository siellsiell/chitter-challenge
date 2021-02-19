require 'sinatra/base'

class Chitter < Sinatra::Base

  get '/' do
    redirect '/feed'
  end

  get '/feed' do
    erb :feed
  end

end
