require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    @piglatinizer = PigLatinizer.new
    @output = @piglatinizer.piglatinize(params[:user_phrase])
    erb :result
  end
end