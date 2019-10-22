require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    copy_pl = PigLatinizer.new
    @piglatinized_text = copy_pl.piglatinize(params[:user_phrase])
    erb :results
  end


end
