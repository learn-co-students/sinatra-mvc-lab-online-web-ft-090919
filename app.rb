require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        latinize = PigLatinizer.new
        @new_sentence = latinize.piglatinize(params[:user_phrase])
        @new_sentence

        erb :piglatinize
    end

    get '/piglatinize' do
        erb :piglatinize
    end
end