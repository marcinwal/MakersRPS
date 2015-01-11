require 'sinatra/base'

class RPS < Sinatra::Base

  set :public, 'public' 
  set :views, 'views'


  enable :sessions 

  GAME=[:rock,:paper,:scissors]
  PLAYERS=[]

  def winner(plqyer1,player2)
  end  

  get '/' do
    @name = params[:name] 
    session[:name]=@name

    puts session[:name]

    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
