class Item
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @sell_in = sell_in
    @quality = quality
    @name = name
    error_cases
  end

  def to_s()
    "#{@name}, #{@sell_in}, #{@quality}"
  end

  def update_quality
    if @sell_in <= 0
      @quality -= 2
    else
      @quality -= 1
    end
  end

  def update_sell_in
    @sell_in -= 1
  end

  def error_cases
    test_quality
  end

  def test_quality
    raise 'Quality cannot be above 50' if @quality > 50
  end
end
