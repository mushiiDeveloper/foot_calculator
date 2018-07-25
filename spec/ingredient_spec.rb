require 'ingredient'
describe Ingredient do
  describe '#==' do
    let(:pomid) {described_class.new(name: 'Tomato', cost: 100)}
    let(:tomato) {described_class.new(name: 'Tomato', cost: 100)}

    context 'when ingridients are equal' do
      it 'they are trule equal' do
        expect(pomid == tomato).to be true
      end
    end

    context 'when in ingridients are different name' do
      let(:tomato) {described_class.new(name: 'Bet', cost: 100)}
      it 'Name is different' do
        expect(pomid == tomato).to be false
      end
    end

    context 'when in ingridients are different name' do
      let(:tomato) {described_class.new(name: 'Tomato', cost: 74)}
      it 'Cost is different' do
        expect(pomid == tomato).to be false
      end
    end

  end
end
