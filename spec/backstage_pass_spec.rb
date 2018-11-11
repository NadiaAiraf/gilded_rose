require 'backstage_pass'

describe BackstagePass do
  let(:days15) { described_class.new('15days', 15, 20)}
  let(:days8) { described_class.new('8days', 8, 20)}
  let(:days3) { described_class.new('3days', 3, 20)}

  describe '# update_quality' do
    it 'reduces the value of apples by 1' do
      expect(days15.quality).to eq 20
      days15.update_quality
      expect(days15.quality).to eq 21
    end

    it 'reduces the value of apples by 1' do
      expect(days8.quality).to eq 20
      days8.update_quality
      expect(days8.quality).to eq 22
    end

    it 'reduces the value of apples by 1' do
      expect(days3.quality).to eq 20
      days3.update_quality
      expect(days3.quality).to eq 23
    end
  end
end
