require 'meal_plan'

load 'ingredient.rb'
load 'ingredient_quantity.rb'
load 'recipe.rb'
load 'meal_serving.rb'

describe MealPlan do

  let(:pomid) {Ingredient.new(name: 'Tomato', cost: 100)}
  let(:sausage) {Ingredient.new(name: 'Sausage', cost: 200)}
  let(:potato) {Ingredient.new(name: 'Potato', cost: 150)}


  let(:cupboards_ingredients) do
    [IngredientQuantity.new(ingredient: pomid, quanity: 200),
     IngredientQuantity.new(ingredient: sausage, quanity: 150)]
  end

  let(:tasty_potato_ingredients) do
    [IngredientQuantity.new(ingredient: pomid, quanity: 120),
     IngredientQuantity.new(ingredient: sausage, quanity: 250),
     IngredientQuantity.new(ingredient: potato, quanity: 750)]
  end

  let(:recipe_of_cupboards) {
    Recipe.new(name: 'Cupboards', servings_count: 4,
               ingredient_quantities: cupboards_ingredients)
  }

  let(:recipe_of_potato) {
    Recipe.new(name: 'Cupboards', servings_count: 6,
               ingredient_quantities: tasty_potato_ingredients)
  }


  let(:serving_cupboard) {MealServing.new(times: 2, recipe: recipe_of_cupboards)}
  let(:serving_potato) {MealServing.new(times: 3, recipe: recipe_of_potato)}

  let(:my_meal_plan) do
    described_class.new(name: "Individual Plan", ind_count: 2,
                        meal_serving: [serving_cupboard,
                                       serving_potato])
  end

  describe "#grouped_ingredient_quantities" do
    context "when return all grouped ingredient of plan" do
      let(:result_arr) do
        [IngredientQuantity.new(ingredient: pomid, quanity: 160),
         IngredientQuantity.new(ingredient: sausage, quanity: 200),
         IngredientQuantity.new(ingredient: potato, quanity: 375)]
      end
      it "does return new array" do
        expect(my_meal_plan.grouped_ingredient_quantities).to eq(result_arr)
      end
    end
  end

  describe "#total_cost" do
    context "when return all cost of meal plan " do
      let(:result_arr) do
        [IngredientQuantity.new(ingredient: pomid, quanity: 160),
         IngredientQuantity.new(ingredient: sausage, quanity: 200),
         IngredientQuantity.new(ingredient: potato, quanity: 375)]
      end
      it "does return price" do
        expect(my_meal_plan.total_cost).to eq(112.25)
      end
    end
  end

end