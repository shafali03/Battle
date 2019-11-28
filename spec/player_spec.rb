require 'player'

describe Player do
  subject(:shaf) { Player.new('Shaf') }
  subject(:ellis) { Player.new('Ellis') }

  describe "#name" do
    it "need to return the player name" do
      expect(shaf.name).to eq('Shaf')
    end
  end

  describe "#attack" do
    it "reduces HP of the target" do
     expect { shaf.attack(ellis) } .to change { ellis.hp }.by (-10)
    end
  end
end
