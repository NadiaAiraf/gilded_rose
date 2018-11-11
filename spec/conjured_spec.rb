require 'conjured'

describe Conjured do
  let(:apple) { described_class.new('apple', 15, 20)}
  let(:rotten_banana) { described_class.new('rotten banana', 0, 20)}

  describe '# update_quality' do
    it 'reduces quality by 2' do
      apple.update_quality
      expect(apple.quality).to eq 18
    end

    it 'reduces the value of apples by 4 once past sell date' do
      rotten_banana.update_quality
      expect(rotten_banana.quality).to eq 16
    end
  end
end
