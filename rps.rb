require 'sinatra/base'
require './lib/setup.rb'

class RPS < Sinatra::Base

  set :public, 'public' 
  set :views, 'views'


  enable :sessions 

  GAME_CLASSIC = [:rock,:paper,:scissors]
  GAME_SF = [:rock,:paper,:scissors,:lizard,:spock]
  RULES_CLASSIC = {:rock => :scissors,:paper => :rock,:scissors => :paper}
  RULES_SF = {:scissors => :paper,:scissors => :lizard,:paper => :spock, :paper => :rock,
              :rock => :scissors,:rock => :lizard,:lizard => :spock, :lizard => :paper,
              :spock => :scissors, :spock => :rock}
  PLAYERS = []
  GAME = Game.new(GAME_CLASSIC,RULES_CLASSIC)


  def init_player(name)
    player = Player.new(name)
    player.id_set(player.object_id.to_s)
    stats = Stats.new
    session[:name] = name
    session[:stats] = stats
    session[:player] = player
    PLAYERS << player
    session[:index] = PLAYERS.count - 1 #which position in PLAYERS array
    return name,stats
  end

  def move()
    choice=/\d/.match(params.first[0])
    GAME.return_choice(choice[0].to_i)
  end

  get '/' do
    @result = false
    @number_of_items = GAME.count_items

    if (params[:name]!= nil && session[:name]==nil) #1st time registration with name
      @name = params[:name]
      session[:name],session[:stats] = init_player(@name)
    elsif (session[:name]==nil)
      @name = nil
    else    
      @name = session[:name]
    end

    if params.count == 2 #return with selected button
      @player_move = move
      @computer = GAME.random
      PLAYERS[session[:index]].move = @player_move #saves the move in array
      if PLAYERS.count == 1 #playing against computer
        @opponent = "computer"
        @opponent_move = @computer
      else
        @opponent = (PLAYERS.select{|el| el.id != session[:player].id}.first).name
        @opponent_move = (PLAYERS.select{|el| el.id != session[:player].id}.first).move
      end
      @winner = GAME.winner(@player_move,@opponent_move) ? session[:name] : @opponent
      puts @winner
      @result = true

    end  
 
    erb :index
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
