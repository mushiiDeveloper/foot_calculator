require 'ingredient'
describe Ingredient do
  describe '#==' do
    let(:pomid) {described_class.new(name: 'Tomato', cost: 100)}
    let(:tomato) {described_class.new(name: 'Tomato', cost: 100)}
    let(:bet) {described_class.new(name: 'Tomato', cost: 110)}

    context 'when ingridients are equal' do
      it 'they are trule equal' do
        expect(pomid).to eq(tomato)
      end
    end

    context 'when ingridients are not equal' do
      it 'Cost is different' do
        expect(pomid).not_to eq(bet)
      end
    end
  end
end
