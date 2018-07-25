require 'recipe'
describe Recipe do
  let(:pomid) {Ingredient.new(name: 'Tomato', cost: 100)}
  let(:pomid_quantity) {2.times do
    IngredientQuantity.new(ingredient: pomid, quanity: 200)
  end}
  let(:ingredients) {
    described_class.new(name: 'Hot Tomato', servings_count: 4,
                        ingredient_quantities: pomid_quantity)
  }

  describe "#total_cost" do
    context 'when return total price' do
      it 'should be 40 grn ' do
        expect(ingredients.total_cost).to eq(40)
      end
    end
  end

  describe "#cost_of_one_serving" do
    context 'return cost of one serving ' do
      it 'should be 20 grn ' do
        expect(ingredients.cost_of_one_serving).to eq(20)
      end
    end
  end

  describe "#ingredient_quantities_per_servings" do
    context 'return new object for the required number of portions ' do
      let(:new_pomid_quantity) {2.times do
        IngredientQuantity.new(ingredient: pomid, quanity: 400)
      end}
      it 'it`s good object`' do
        expect(ingredients.ingredient_quantities_per_servings(8)).to
        eq(new_pomid_quantity)
      end
    end
  end

  describe "#ingredient_quantities_per_one_serving" do
    context 'return new object for one serving ' do
      let(:new_pomid_quantity) {2.times do
        IngredientQuantity.new(ingredient: pomid, quanity: 100)
      end}
      it 'it`s good object`' do
        expect(ingredients.ingredient_quantities_per_one_serving).to
        eq(new_pomid_quantity)
      end
    end
  end

end
