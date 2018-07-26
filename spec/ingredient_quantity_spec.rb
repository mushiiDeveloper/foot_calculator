require 'ingredient_quantity'
load 'ingredient.rb'
describe IngredientQuantity do
  let(:pomid) {Ingredient.new(name: 'Tomato', cost: 100)}
  describe '#total_cost' do
    let(:pomid_quantity) {described_class.new(ingredient: pomid, quanity: 500)}
    let(:bad_ingredient) {described_class.new(ingredient: pomid_quantity, quanity: 120)}

    context 'when return are correct total price' do
      it do
        pomid_quantity.total_cost.should == 50
      end
    end

    context 'when parameters is not object of Ingregient' do
      it "wrong parameters" do
        expect {bad_ingredient.total_cost}.to raise_error(ArgumentError)
      end
    end
  end

  describe '#+' do
    let(:pomid_quantity) {described_class.new(ingredient: pomid, quanity: 5)}
    let(:pomid_quantity_second) {described_class.new(ingredient: pomid, quanity: 3)}

    context 'when object are equally' do
      it 'should return sum' do
        summary = pomid_quantity + pomid_quantity_second
        expect(summary.quanity).to eq(8)
      end
    end

    context 'when object are different' do
      it 'should return error' do
        let(:pomid_quantity_second) {described_class.new(ingredient: pomid_quantity, quanity: 3)}
        summary = pomid_quantity + pomid_quantity_second
        expect {summary.quanity}.to raise_error(ArgumentError)
      end
    end

  end

  describe '#*' do
    let(:pomid_quantity) {described_class.new(ingredient: pomid, quanity: 5)}
    context 'when happens multiplication' do
      it 'should return good result' do
        multi = pomid_quantity * 10
        expect(multi.quanity).to eq(50)
      end

      it 'does return bad result' do
        multi = pomid_quantity * 'abc'
        expect {multi.quanity}.to raise_error(ArgumentError)
      end
    end
  end
end