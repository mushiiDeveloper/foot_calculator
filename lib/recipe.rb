class Recipe
  attr_accessor :name, :serving_count, :ingredient_quantities

  def initialize(hash)
    @name = hash[:name]
    @serving_count = hash[:serving_count]
    @ingredient_quantities = hash[:ingredient_quantities]
  end
end
