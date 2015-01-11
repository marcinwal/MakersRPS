class Player
  attr_accessor :name
  attr_reader :id
  def initialize(name,id)
    @name = name
    @id = id
  end
end