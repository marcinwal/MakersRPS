require 'game'

describe Game do
  it 'can be initialize with default values' do
    game = Game.new()
    expect(game.count_items).to eq(3)
  end

  let(:game){Game.new()}
  it 'can take a sample from its definitions' do 
    rand = game.random
    expect(game.definitions.member?(rand)).to eq(true)
  end

  it 'can find a winner' do 
    result = game.winner(:rock,:paper)
    expect(result).to eq(2)
  end

  it 'can be a draw' do 
    result = game.winner(:paper,:paper)
    expect(result).to eq(0)
  end

  it 'can return its definitions' do 
    expect(game.return_choice(1)).to eq(:rock)
  end
end
