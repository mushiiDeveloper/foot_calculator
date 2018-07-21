class IngredientQuantity
  attr_accessor :ingredient, :quanity

  def initialize(hash)
    @ingredient = hash[:ingredient]
    @quanity = hash[:quanity]
  end

  def total_cost
    @ingredient.cost * @quanity
  end
end