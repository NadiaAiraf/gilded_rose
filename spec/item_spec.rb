require 'item'

describe Item do
  subject { described_class.new('apples', 1, 5) }

  describe '# update_quality' do
    it 'reduces the value of apples by 1' do
      subject.update_quality
      expect(subject.quality).to eq 4
    end

    it 'reduces the value of apples by 2 once past sell date' do
      subject.update_quality
      subject.update_quality
      subject.update_quality
      expect(subject.quality).to eq 2
    end
  end

  describe '# update_sell_in' do
    it 'reduces sell_in value by 1' do
      subject.update_sell_in
      expect(subject.sell_in).to eq 0
    end
  end
end
