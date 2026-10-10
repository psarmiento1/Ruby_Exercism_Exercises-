=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.
=end

class Matrix
  def initialize(string)
    # given string: "1 2\n3 4"
    @matrix = []
    line = string.split("\n") # returns ["1 2", "3 4"]
    #for loop returns [["1", "2"], ["3", "4"]]
    for row in line
      @matrix << row.split(" ") 
    end
  end

  def row(index)
    row = []
    for element in @matrix[index - 1]
      row << element.to_i
    end
    row
  end

  def column(index)
    column = []
    for row in @matrix
      column << row[index - 1].to_i
    end
    column
  end
end