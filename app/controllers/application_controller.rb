require './config/environment'
require './app/models/tweet'
require 'pry'

class ApplicationController < Sinatra::Base

  configure  do
    set :public_folder, 'public'
    set :views, 'app/views'  
  end

  get '/' do
   # tweet1 = Tweet.new("Malachi", "Hello")
    #tweet2 = Tweet.new("Some Guy", "Hi")
    #tweet3 = Tweet.new("Another Guy", "Sup")

    @tweets = Tweet.all_messages

    erb:tweets
  end

  post '/tweets' do
    # puts paramss
    # binding.pry
    new_tweet = Tweet.new(params[:user],params[:message])
    redirect ('/')
  end

end