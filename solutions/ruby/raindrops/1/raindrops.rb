=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

module Raindrops
  def self.convert(number)
    string = ""
    return number.to_s unless ([(number % 3).zero?, (number % 5).zero?, (number % 7).zero?]).any?
    
    if (number % 3).zero?
      string << "Pling"
    end

    if (number % 5).zero?
      string << "Plang"
    end

    if (number % 7).zero?
      string << "Plong"
    end
    string
  end
end
