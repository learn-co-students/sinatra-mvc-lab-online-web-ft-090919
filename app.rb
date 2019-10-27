require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        "Hello World"
    end


    #get '/' do
    #    erb :user_input
    #end

    post '/pig_latin' do
        @pig_latinized_text = PigLatinizer.new(params[:user_input])
        erb :pig_latin
    end

end