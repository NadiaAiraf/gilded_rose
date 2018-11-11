require 'aged_cheese'

describe AgedCheese do
  let(:subject) { described_class.new('brie', 9, 10) }
  let(:full_quality) { described_class.new('brie', 9, 50) }

  describe '#update_quality' do
    it 'increases quality by 1 as it gets older' do
      subject.update_quality
      expect(subject.quality).to eq 11
    end

    it 'will not increase quality past 50' do
      full_quality.update_quality
      expect(full_quality.quality).to eq 50
    end
  end
end
