require 'ingredient'
describe Ingredient do
  describe '#==' do
    let(:pomid) {described_class.new(name: 'Tomato', cost: 100)}
    let(:tomato) {described_class.new(name: 'Tomato', cost: 100)}
    let(:bet) {described_class.new(name: 'Tomato', cost: 110)}

    context 'when ingridients are equal' do
      it 'they are trule equal' do
        expect(pomid.name).to eq(tomato.name)
        expect(pomid.cost).to eq(tomato.cost)
      end
    end

    context 'when ingridients are not equal' do
      it 'Cost is different' do
        expect(pomid.name).to eq(tomato.name)
        expect(pomid.cost).not_to eq(bet.cost)
      end
    end
  end
end
