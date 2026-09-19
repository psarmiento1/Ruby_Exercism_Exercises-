module Port
    IDENTIFIER = :PALE

  def self.get_identifier(city)
    city[0..3].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    if ship_identifier[0..2].to_s == "OIL" || ship_identifier[0..2].to_s == "GAS"
      return :A
    else
      return :B
    end
  end
end
