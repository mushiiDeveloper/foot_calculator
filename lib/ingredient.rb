class Ingredient
  attr_accessor :cost, :name

  def initialize(hash)
    @name = hash[:name]
    @cost = hash[:cost]
  end

  def ==

  end
end
