require 'legendary_item'

describe LegendaryItem do
  subject { described_class.new('sulfurus', 1, 80) }

  describe '# update_quality' do
    it 'the quality remains at 80' do
      subject.update_quality
      expect(subject.quality).to eq 80
    end
  end
end
