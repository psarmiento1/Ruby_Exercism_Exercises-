=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end
class ArgumentError < StandardError
end

module Hamming
  def self.compute(input1, input2)
    raise ArgumentError if input1.length != input2.length  # if they are different length
    
    if input1 == input2
      0
    else
      count = 0
      index = 0
      input1.each_char do |c|
        if c != input2[index] 
          count +=1
        end
          
        index += 1
      end
      count
    end
  end
end