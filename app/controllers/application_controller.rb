require './config/environment'
require './app/models/tweet'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    @tweets = Tweet.all
    erb :index 
  end

    get '/tweet' do
      erb :tweet
    end
    
     post '/tweet' do
       #@username = params[:username]
       #@tweet_text = params [:status]
       #puts params
    Tweet.new(params[:username], params[:status])
      redirect '/'
    end
end
