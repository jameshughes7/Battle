require 'player'

describe Player do
  subject(:marcus) { Player.new('Marcus') }
  subject(:james) { Player.new('James') }

  describe '#name' do
    it 'returns the name' do
      expect(marcus.name).to eq 'Marcus'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(marcus.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(james).to receive(:receive_damage)
      marcus.attack(james)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { marcus.receive_damage }.to change { marcus.hit_points }.by(-10)
    end
  end
end
