=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.
=end

class Series
  def initialize(num)
    raise ArgumentError unless !num.empty?
    
    @num = [num]
    debug "@num: #{@num}"
  end

  def slicer(slice)
    tmp = []
    range = slice - 1
    i = 0
    while i < @num.first.size - 1
      if range > @num.first.size - 1
          break
      end
      tmp << @num.first[i..range]
      range += 1
      i += 1
    end
    tmp
  end
  
  def slices(slice)
    case 
    when slice > @num.first.size, slice == 0, slice < 0
      raise ArgumentError
    when slice == 1 && @num.first.size <= 2
      @num.first.split("")
    when slice >= 2 
      slicer(slice)
    else
      @num
    end
  end
end