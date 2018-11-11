require 'backstage_pass'

describe BackstagePass do
  let(:days15) { described_class.new('15days', 15, 20) }
  let(:days8) { described_class.new('8days', 8, 20) }
  let(:days3) { described_class.new('3days', 3, 20) }
  let(:too_late) { described_class.new('too late',-1,20) }
  let(:valuable_tickets) { described_class.new('too late', 20, 50) }

  describe '# update_quality' do
    it 'if 15 days to sell by, increase quality by 1' do
      expect(days15.quality).to eq 20
      days15.update_quality
      expect(days15.quality).to eq 21
    end

    it 'if 8 days to sell by, increase quality by 2' do
      expect(days8.quality).to eq 20
      days8.update_quality
      expect(days8.quality).to eq 22
    end

    it 'if 3 days to sell by, increase quality by 3' do
      expect(days3.quality).to eq 20
      days3.update_quality
      expect(days3.quality).to eq 23
    end

    it 'if sell by is negative, quality drops to 0' do
      too_late.update_quality
      expect(too_late.quality).to eq 0
    end

    it 'wont go beyond a quality of 50' do
      valuable_tickets.update_quality
      expect(valuable_tickets.quality).to eq 50
    end
  end
end
