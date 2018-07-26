class Ingredient
  attr_accessor :cost, :name

  def initialize(hash)
    @name = hash[:name]
    @cost = hash[:cost]
  end

  def ==(obj)
  if self.__id__ != obj.__id__ && self.name == obj.name && self.cost == obj.cost
    true
  else
    false
  end
  end
end

