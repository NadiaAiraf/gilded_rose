require 'item'

describe Item do
  subject { described_class.new('apples', 1, 5) }

  describe '# reduce_quality' do
    it 'reduces the value of apples by 1' do
      subject.reduce_quality
      expect(subject.quality).to eq 4
    end

    it 'reduces the value of apples by 2 once past sell date' do
      subject.reduce_quality
      subject.reduce_quality
      subject.reduce_quality
      expect(subject.quality).to eq 2
    end
  end
end
