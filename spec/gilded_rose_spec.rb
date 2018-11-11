require 'gilded_rose'
require 'item'

describe GildedRose do
  let(:mockItem) { double :item, update_quality: nil, update_sell_in: nil }
  subject { described_class.new(items) }

  describe "#update_quality" do
    it "calls update_quality" do
      items = [mockItem]
      gilded_rose = GildedRose.new(items)
      gilded_rose.update_quality
      expect(mockItem).to have_received(:update_quality)
    end

    it "calls update_sell_in" do
      items = [mockItem]
      gilded_rose = GildedRose.new(items)
      gilded_rose.update_quality
      expect(mockItem).to have_received(:update_sell_in)
    end
  end

end
