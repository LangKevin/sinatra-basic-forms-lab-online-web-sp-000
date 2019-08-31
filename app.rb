require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
      erb :index
    end

    post '/puppy' do
# name
# breed
# age
      @analyzed_text = TextAnalyzer.new(params[:user_text])

      erb :results
    end
    get '/new' do
      erb :create_puppy.erb
    end

end
