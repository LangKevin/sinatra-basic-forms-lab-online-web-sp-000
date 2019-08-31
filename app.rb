require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
      erb :index
    end

    post '/puppy' do
      @name = params[:name]
      @breed = params[:breed]
      @age = params[:age]
      # @analyzed_text = TextAnalyzer.new(params[:user_text])

      erb :display_puppy
    end
    get '/new' do
      erb :create_puppy.erb
    end

end
