class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    @rate = @speed * 221
    if @speed < 5
      @rate
    elsif @speed <9
      @rate * 0.9
    elsif @speed == 9
      @rate * 0.8
    else
      @rate * 0.77
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end

