class BirdCount
  def self.last_week
    @array = [0, 2, 5, 3, 7, 8, 4]
  end

  def initialize(birds_per_day)
    @array = birds_per_day
  end

  def yesterday
    @array[-2]
  end

  def total
    @array.sum
  end

  def busy_days
    @array.count { |element| element >= 5}
  end

  def day_without_birds?
    @array.any? { |element| element == 0}
  end
end
