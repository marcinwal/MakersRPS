require 'player'
describe Player do
  let(:player){Player.new("Muppet")}
  it "can change its id" do
    player.id_set("123")
    expect(player.id).to eq("123")
  end
end