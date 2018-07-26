class MealServing
  attr_accessor :times, :recipe

  def initialize(hash)
    @times = hash[:times]
    @recipe = hash[:recipe]
  end
end