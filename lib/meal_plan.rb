class MealPlan
  attr_accessor :name, :ind_count, :meal_serving

  def initialize(hash)
    @name = hash[:name]
    @ind_count = hash[:ind_count]
    @meal_serving = hash[:meal_serving]
  end
end