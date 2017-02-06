require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
post '/call' do
 user_action=params[:action]
  #@flop=action(community_cards)
  @results=action(user_action)
  @results.map do |card|
    #card[1]=card[1].to_s.gsub("4", "<img src='https://s-media-cache-ak0.pinimg.com/736x/30/23/5c/30235c0c7fb5c47300ed9cd6dc854bba.jpg' width=20px height='auto'>")
    #card[1]=card[1].to_s.gsub("3", "<img src='http://www.catsatcards.com/CImages/Final/DiamondSuit.jpg'>")
    #card[1]=card[1].to_s.gsub("2", "<img src='http://www.clipartkid.com/images/146/free-card-icon-heart-clipart-free-clipart-graphics-images-and-CXVtTg-clipart.jpg' width=20px height='auto'>")
    #card[1]=card[1].to_s.gsub("1", "<img src='https://img.clipartfox.com/d81d68352d9800bc255f681d2a519629_black-spade-clip-art-vector-ace-of-spades-clipart_1600-1200.svg' width=20px height='auto'>")
  end
  erb :results
end
end
class MyApp
  post '/second' do
    erb :results2
  end
#post '/second' do
  #action=params[:action]
  #new_hand=new_action(@results, action)
 #erb :results2
end



