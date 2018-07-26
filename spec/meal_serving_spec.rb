require 'meal_serving'

load 'ingredient.rb'
load 'ingredient_quantity.rb'
load 'recipe.rb'

describe MealServing do
  let(:pomid) {Ingredient.new(name: 'Tomato', cost: 100)}
  let(:pomid_quantity) do
    [IngredientQuantity.new(ingredient: pomid, quanity: 200),
     IngredientQuantity.new(ingredient: pomid, quanity: 200)]
  end

  let(:ingredients) {
    Recipe.new(name: 'Hot Tomato', servings_count: 4,
               ingredient_quantities: pomid_quantity)
  }
  let(:meal_servng) {described_class.new(times: 2, recipe: ingredients)}

  describe "#total_ingredient_quantities" do
    let(:pomid_quantity) do
      [IngredientQuantity.new(ingredient: pomid, quanity: 200),
       IngredientQuantity.new(ingredient: pomid, quanity: 200),
       IngredientQuantity.new(ingredient: pomid, quanity: 200),
       IngredientQuantity.new(ingredient: pomid, quanity: 200)]
    end
    context "when return good ingredients" do
      it "return new arr" do
        expect(meal_servng.total_ingredient_quantities).to eq(new_ingridients)
      end
    end
  end

  describe "#total_cost" do
    context "when return good price" do
      it "return price of meal serving" do
        expect(meal_servng.total_cost).to eq(80)
      end
    end
  end

end