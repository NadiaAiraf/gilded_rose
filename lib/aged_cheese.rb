require_relative 'item'

class AgedCheese < Item
  def update_quality
    @quality += 1 if @quality < 50
  end
end
