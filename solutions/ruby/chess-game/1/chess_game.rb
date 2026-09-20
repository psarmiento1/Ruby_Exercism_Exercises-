module Chess
    RANKS = (1..8)
    FILES = Range.new('A', 'H')

  def self.valid_square?(rank, file)
    if RANKS.include?(rank.to_i) && FILES.include?(file)
      true
    else
      false
    end
  end

  def self.nickname(first_name, last_name)
    "#{first_name[0..1].upcase}#{last_name[-2..-1].upcase}"
  end

  def self.move_message(first_name, last_name, square)
    if valid_square?(square[1], square[0])
      "#{nickname(first_name, last_name)} moved to #{square}"
    else
      "#{nickname(first_name, last_name)} attempted to move to #{square}, but that is not a valid square"
    end
  end
end

