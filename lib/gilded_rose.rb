class GildedRose

  NONPERISHABLES = ["Aged Brie",
                    "Backstage passes to a TAFKAL80ETC concert",
                    "Sulfuras, Hand of Ragnaros"]

  NOSELLBY = ["Sulfuras, Hand of Ragnaros"]

  def initialize(items)
    @items = items
  end

  def update_quality()
    @items.each do |item|
      if !(NONPERISHABLES.include?(item.name))
        if item.quality > 0
          item.quality -= 1
        end
      else
        if item.quality < 50
          item.quality += 1
          if item.name == "Backstage passes to a TAFKAL80ETC concert"
            if item.sell_in < 11
              item.quality += 1
            end
            if item.sell_in < 6
              item.quality += 1
            end
          end
        end
      end

      unless NOSELLBY.include?(item.name)
        item.sell_in = item.sell_in - 1
      end

      if item.sell_in < 0
        if item.name != "Aged Brie"
          if item.name != "Backstage passes to a TAFKAL80ETC concert"
            if item.quality > 0
              if item.name != "Sulfuras, Hand of Ragnaros"
                item.quality = item.quality - 1
              end
            end
          else
            item.quality = item.quality - item.quality
          end
        else
          if item.quality < 50
            item.quality += 1
          end
        end
      end

    end
  end
end
