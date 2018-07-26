class IngredientQuantity
  attr_accessor :ingredient, :quanity

  def initialize(hash)
    @ingredient = hash[:ingredient]
    @quanity = hash[:quanity]
  end

  def total_cost
    @ingredient.is_a?(Ingredient) ? @ingredient.cost * (0.001 * @quanity) : nil
  end

  def +(obj)
     if self.ingredient.name == obj.ingredient.name &&
         self.ingredient.cost == obj.ingredient.cost

       self.quanity = self.quanity + obj.quanity
      self
    else
      self
    end
  end

  def *(num)
    if num.is_a?(Integer)
      self.quanity = self.quanity * num
      self
    else
      false
    end
  end
end
