module Isogram
  def self.isogram?(string)
    string = string.downcase
    string.chars.each do |c|
      next if c == "-" || c == " "
      next if string.count(c) == 1

      return false
    end
    true
  end
end
  