require 'ingredient_quantity'
describe IngredientQuantity do
  describe '#total_cost' do
    let(:pomid) {Ingredient.new(name: 'Tomato', cost: 100)}
    let(:pomid_quantity) {described_class.new(ingredient: pomid, quanity: 5)}
    let(:bad_ingredient) {described_class.new(ingredient: pomid_quantity, quanity: 5)}

    context 'when return are correct total price' do
      it do
        pomid_quantity.total_cost.should == 500
      end
    end

    context 'when parameters is not object of Ingregient' do
      it {expect(bad_ingredient.ingredient.class.name).not_to eq('Ingredient')}
    end
  end
end
