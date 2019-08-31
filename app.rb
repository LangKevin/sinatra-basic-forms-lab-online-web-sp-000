require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
      erb :index
    end

    post '//puppy' do
      @analyzed_text = TextAnalyzer.new(params[:user_text])

      erb :results
    end

end
