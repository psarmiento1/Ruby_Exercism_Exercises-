=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

module Raindrops
  def self.convert(number)
    string = ""
    string += "Pling" if (number % 3).zero?
    string += "Plang" if (number % 5).zero?
    string += "Plong" if (number % 7).zero?
    
    string.empty? ? number.to_s : string
  end
end
