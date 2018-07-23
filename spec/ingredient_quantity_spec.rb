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

  describe '#+' do
    let(:pomid) {Ingredient.new(name: 'Tomato', cost: 100)}
    let(:pomid_quantity) {described_class.new(ingredient: pomid, quanity: 5)}
    let(:pomid_quantity_second) {described_class.new(ingredient: pomid, quanity: 3)}

    context 'when object are equally' do
      it 'should return sum' do
        expect(pomid_quantity.quanity).to eq(8)
      end
    end
  end

  describe '#*' do
    let(:pomid) {Ingredient.new(name: 'Tomato', cost: 100)}
    let(:pomid_quantity) {described_class.new(ingredient: pomid, quanity: 5)}
    context 'when happens multiplication' do
      it 'should return good result' do
        expect(pomid_quantity.*(20)).to eq(pomid_quantity.quanity * 20)
      end

      it 'should be bad result' do
        expect(number.to_f != number || number.to_i != number).to
        raise_error("Wrong parameters")
      end
    end
  end
end