require 'game'

describe Game do
  it 'can be initialize with default values' do
    game = Game.new()
    expect(game.count_items).to eq(5)
  end

  let(:game){Game.new()}
  it 'can take a sample from its definitions' do 
    rand = game.random
    expect(game.definitions.member?(rand)).to eq(true)
  end

  it 'can find a winner papers' do 
    result = game.winner(:rock,:paper)
    expect(result).to eq(:paper)
  end

    it 'can find a winner rock' do 
    result = game.winner(:rock,:scissors)
    expect(result).to eq(:rock)
  end

  it "can draw" do
    result = game.winner(:rock,:rock)
    expect(result).to eq(:rock)
  end

  it 'can find a winner scissors' do 
    result = game.winner(:scissors,:paper)
    expect(result).to eq(:scissors)
  end

  it 'can return its definitions' do 
    expect(game.return_choice(1)).to eq(:rock)
  end
end
