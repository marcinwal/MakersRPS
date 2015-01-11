class Game

  INIT = [:rock,:paper,:sciccors]
  attr_reader :definitions

  def initialize(init=INIT)
    @definitions = init
  end  

  def count_items
    @definitions.count
  end

  def rules(sym1,sym2)
  end

end