class Game

  INIT = [:rock,:paper,:scissors]
  RULES = {:rock => [:scissors],:paper => [:rock],:scissors => [:paper]} #key is winning over the value

  attr_reader :definitions
  attr_reader :rules

  def initialize(init=INIT,rules=RULES)
    @definitions = init
    @rules = rules
  end  

  def count_items
    @definitions.count
  end

  def winner(sym1,sym2)
    return sym1 if (@rules.key?(sym1) && @rules[sym1].include?(sym2)) #1
    return sym2 
  end

  def random
    @definitions.sample
  end

  def return_choice(number)
    @definitions[number-1]
  end

end