# frozen_string_literal: true

class Ingredient
  attr_accessor :cost, :name

  def initialize(hash)
    @name = hash[:name]
    @cost = hash[:cost]
  end
end
