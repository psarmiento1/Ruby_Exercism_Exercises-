=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.
=end

class Matrix
  def initialize(string)
    # given string: "1 2\n3 4"
    @matrix = []
    @matrix = string.split("\n").map { |row| row.split(" ").map(&:to_i) } # returns [[1, 2], [3, 4]]
  end

  def row(index)
    @matrix[index - 1]
  end

  def column(index)
    @matrix.map { |row| row[index - 1]}
  end
end