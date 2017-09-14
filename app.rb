require 'sinatra/base'

class Battle < Sinatra::Base
enable :sessions

set :session_secret, 'super secret'

get '/' do
  erb :index
end

post '/names' do
  # @Player1 = params[:Player1]
  p params
  session[:player1] = params[:player1]
  session[:player2] = params[:player2]
  p session[:player1]
  redirect '/play'
end

get '/play' do
  @player1 = session[:player1]
  @player2 = session[:player2]
  p session[:player1]
  p @player1
  erb :play
end

# start the server if ruby file executed directly
  run! if app_file == $0

end
