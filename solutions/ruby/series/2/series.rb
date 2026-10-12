=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.
=end

# Community Solution
class Series
  def initialize(string)
    raise ArgumentError if string.empty?
    @string = string
  end

  def slices(slice_length)
    raise ArgumentError if slice_length <= 0 || slice_length > @string.length
    @string.chars.each_cons(slice_length).map(&:join)
  end
end