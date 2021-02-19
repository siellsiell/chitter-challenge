require 'models/peep'
require 'sinatra/base'

db_options = YAML.load(File.read('./config/database.yml'))
ActiveRecord::Base.establish_connection(db_options[ENV['RACK_ENV']])

class Chitter < Sinatra::Base

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
