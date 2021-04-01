class Dice
  attr_reader :values
  def initialize
    @values = []
  end

  def roll(num = 1)
    num.times { @values << rand(6) + 1 }
  end

  def score
    @values.sum
  end
end