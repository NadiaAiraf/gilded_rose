require_relative 'item'

class LegendaryItem < Item
  def update_quality
    @quality = 80
    # no quality to update, it should stay at 80
  end

  def update_sell_in
    # does nothing
  end
end
