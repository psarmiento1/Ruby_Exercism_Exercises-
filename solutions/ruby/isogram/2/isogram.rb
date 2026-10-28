module Isogram
  def self.isogram?(string)
    letters = string.downcase.scan(/\w/)
    letters == letters.uniq
  end
end
  