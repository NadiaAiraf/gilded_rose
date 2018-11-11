describe Item do
  subject { described_class.new('apples', 1, 5) }

  describe '# reduce_value' do
    it 'reduces the value of apples by 1' do
      subject.reduce_value
      expect(subject.value).to eq 4
    end

    it 'reduces the value of apples by 2 once past sell date' do
      subject.reduce_value
      subject.reduce_value
      subject.reduce_value
      expect(subject.value).to eq 2
    end
  end
end
