require_relative 'item'

class Conjured < Item
  def update_quality
    if @sell_in <= 0
      @quality -= 4
    else
      @quality -= 2
    end
    @quality = 0 if @quality < 0
  end
end
