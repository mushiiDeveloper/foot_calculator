class IngredientQuantity
  attr_accessor :ingredient, :quanity

  def initialize(hash)
    @ingredient = hash[:ingredient]
    @quanity = hash[:quanity]
  end

  def total_cost
    @ingredient.cost * (0.001*@quanity)
  end
end