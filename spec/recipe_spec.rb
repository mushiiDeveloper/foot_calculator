require 'recipe'
describe Recipe do
  let(:pomid) {Ingredient.new(name: 'Tomato', cost: 100)}
  let(:pomid_quantity) {2.times do
    IngredientQuantity.new(ingredient: pomid, quanity: 200)
  end}
  let(:ingredients) {
    described_class.new(name: 'Hot Tomato', servings_count: 2,
                        ingredient_quantities: pomid_quantity)
  }

  describe "#total_cost" do
    context 'when return total price' do
      it 'should be 80 grn ' do
        ingredients.total_cost.should == 40
      end
    end
  end

  describe "#cost_of_one_serving" do
    context 'when return cost of one serving ' do
      it 'should be 20 grn ' do
        ingredients.cost_of_one_serving.should == 20
      end
    end
  end
end
