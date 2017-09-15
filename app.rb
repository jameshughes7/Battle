require 'sinatra/base'
require './lib/player.rb'

class Battle < Sinatra::Base
enable :sessions

set :session_secret, 'super secret'

get '/' do
  erb :index
end

post '/names' do
  $player1 = Player.new(params[:player1])
  $player2 = Player.new(params[:player2])
  p "names"
  p $player1
  p $player2
  redirect '/play'
end

get '/play' do
p "play"

  @player1 = $player1
  # p $player1
  @player2 = $player2
  # p $player2
  erb :play
end

get '/attack' do
  @player1 = $player1
    # p @player1
    # p @player1.name
  @player2 = $player2
    # p @player2
    # p @player2.name
  @player1.attack(@player2)
  erb :attack
end

# start the server if ruby file executed directly
  run! if app_file == $0

end
