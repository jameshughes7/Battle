require 'sinatra/base'

class Battle < Sinatra::Base
enable :sessions

get '/' do
  erb :index
end

post '/names' do
  # @Player1 = params[:Player1]
  session[:Player1] = params[:Player1]
  session[:Player2] = params[:Player2]
  redirect '/play'
end

get '/play' do
  erb :play
end

# start the server if ruby file executed directly
  run! if app_file == $0

end
