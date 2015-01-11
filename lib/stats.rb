class Stats
  attr_accessor :stat 
  def initializer
    stat = {}
  end
  def add_result(result)
    stat[result] +=1 if stat.keys?(result)
    stat[result] = 1 unless stat.keys?(result)
  end
end