require_relative 'item'

class LegendaryItem < Item
  def update_quality
    @quality = 80
    # no quality to update, it should stay at 80
  end
end
