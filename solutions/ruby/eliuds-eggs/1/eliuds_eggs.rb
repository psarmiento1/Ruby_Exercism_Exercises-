=begin
Write your code for the 'Eliuds Eggs' exercise in this file. Make the tests in
`eliuds_eggs_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/eliuds-eggs` directory.
=end

module EliudsEggs

  # returns the number of eggs
  def self.egg_count(decimalValue)
    # to_s returns int to binary expression, 
    # then .count returns how many 1's there are in the string.
    decimalValue.to_s(2).count("1")
  end
end