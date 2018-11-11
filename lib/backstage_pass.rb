require_relative 'item'

class BackstagePass < Item
  def update_quality
    if sell_in > 10
      @quality += 1
    elsif sell_in > 6
      @quality += 2
    elsif sell_in >= 0
      @quality += 3
    else
      @quality = 0
    end
  end
end
