require 'sinatra/base'
require './lib/setup.rb'

class RPS < Sinatra::Base

  set :public, 'public' 
  set :views, 'views'


  enable :sessions 

  GAME=[:rock,:paper,:scissors]
  PLAYERS=[]


  def winner(plqyer1,player2)
  end  

  def init_player(name)
    
    player = Player.new(name)
    player.id_set(player.object_id.to_s)
    stats = Stats.new

    session[:name] = name
    session[:stats] = stats
    PLAYERS << player

    return name,stats

  end

  get '/' do
    @number_of_items = GAME.count

    if (params[:name]!= nil && session[:name]==nil) #1st time registration with name
      @name = params[:name]
      session[:name],session[:stats] = init_player(@name)
      player = Player.new(@name)
    elsif (session[:name]==nil)
      @name = nil
    else    
      @name = session[:name]
    end
      
    puts session[:name] 
    puts session[:choice]

    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
