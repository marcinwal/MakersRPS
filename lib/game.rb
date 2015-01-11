class Game

  INIT = [:rock,:paper,:scissors]
  RULES = {:rock => :scissors,:paper => :rock,:scissors => :paper} #key is winning over the value

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
    return 1 if (@rules.key?(sym1) && @rules[sym1]==sym2)
    return 2 if (@rules.key?(sym2) && @rules[sym2]==sym1)
  end

  def random
    @definitions.sample
  end
  
end