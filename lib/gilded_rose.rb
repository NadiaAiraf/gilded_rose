class GildedRose

  NONPERISHABLES = ["Aged Brie",
                    "Backstage passes to a TAFKAL80ETC concert",
                    "Sulfuras, Hand of Ragnaros"]

  def initialize(items)
    @items = items
  end

  def update_quality()
    @items.each do |item|
      if !(NONPERISHABLES.include?(item.name))
        if item.value > 0
          item.value -= 1
        end
      else
        if item.value < 50
          item.value += 1
          if item.name == "Backstage passes to a TAFKAL80ETC concert"
            if item.sell_in < 11
              item.value += 1
            end
            if item.sell_in < 6
              item.value += 1
            end
          end
        end
      end

      if item.name != "Sulfuras, Hand of Ragnaros"
        item.sell_in = item.sell_in - 1
      end

      if item.sell_in < 0
        if item.name != "Aged Brie"
          if item.name != "Backstage passes to a TAFKAL80ETC concert"
            if item.value > 0
              if item.name != "Sulfuras, Hand of Ragnaros"
                item.value = item.value - 1
              end
            end
          else
            item.value = item.value - item.value
          end
        else
          if item.value < 50
            item.value += 1
          end
        end
      end

    end
  end
end

class Item
  attr_accessor :name, :sell_in, :value

  def initialize(name, sell_in, value)
    @name = name
    @sell_in = sell_in
    @value = value
  end

  def to_s()
    "#{@name}, #{@sell_in}, #{@value}"
  end

  def reduce_value
    if @sell_in <= 0
      @value -= 2
    else
      @value -= 1
    end
  end
end
