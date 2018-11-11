require_relative 'item'

class BackstagePass < Item
  def update_quality
    if sell_in > 10
      increase_quality(1)
    elsif sell_in > 6
      increase_quality(2)
    elsif sell_in >= 0
      increase_quality(3)
    else
      @quality = 0
    end
  end

  private

  def increase_quality(num)
    @quality += num
    @quality = 50 if @quality > 50
  end
end
