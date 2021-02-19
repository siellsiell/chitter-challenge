require 'sinatra/base'

class Chitter < Sinatra::Base

  get '/' do
    'Chitter'
  end

end
