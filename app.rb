require 'sinatra/base'

class Chitter < Sinatra::Base

  PEEPS = ["Peep 1", "Peep 2"]

  get '/' do
    redirect '/feed'
  end

  get '/feed' do
    erb :feed, :locals => {
      :peeps => PEEPS
    }
  end

  post '/post' do
    PEEPS << params[:peep]
    redirect '/feed'
  end

end
