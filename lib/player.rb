class Player

  attr_accessor :name
  attr_reader :id

  def initialize(name)
    @name = name
  end

  def id_set(id)
    @id = id
  end

end