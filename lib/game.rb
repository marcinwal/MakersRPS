class Game

  INIT = [:rock,:paper,:scissors]
  RULES = {:rock => [:scissors],:paper => [:rock],:scissors => [:paper]} #key is winning over the value

  GAME_CLASSIC = [:rock,:paper,:scissors]

  GAME_SF = [:rock,:paper,:scissors,:lizard,:spock]

  RULES_CLASSIC = {:rock => [:scissors],:paper => [:rock],:scissors => [:paper]}

  RULES_SF = {:scissors => [:paper,:lizard],:paper => [:spock,:rock],:rock => [:scissors,:lizard],:lizard=>[:spock,:paper],
          :spock=>[:scissors,:rock]}

  attr_reader :definitions, :rules

  def initialize(init=GAME_SF,rules=RULES_SF)
    @definitions = init
    @rules = rules
  end  

  def count_items
    @definitions.count
  end

  def winner(sym1,sym2)
    @rules[sym1].include?(sym2) ? sym1 : sym2
  end

  def random
    @definitions.sample
  end

  def return_choice(number)
    @definitions[number-1]
  end

end