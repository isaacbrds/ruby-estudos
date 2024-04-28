require "models/stock"

RSpec.shared_examples 'a stock system' do
    let(:stock) { described_class.new }
  
    it 'adds a game to the stock' do
      stock.add_game('GTA V', 5)
      expect(stock.games['GTA V']).to eq(5)
    end
  
    it 'removes a game from the stock' do
      stock.add_game('GTA V', 5)
      stock.remove_game('GTA V', 3)
      expect(stock.games['GTA V']).to eq(2)
    end
  
    it 'checks if a game is available' do
      stock.add_game('GTA V', 5)
      expect(stock.available?('GTA V')).to be_truthy
    end
  end
  
  RSpec.describe Stock do
    include_examples 'a stock system'
  end