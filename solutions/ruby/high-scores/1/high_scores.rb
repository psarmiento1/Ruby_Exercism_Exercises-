=begin
Write your code for the 'High Scores' exercise in this file. Make the tests in
`high_scores_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/high-scores` directory.
=end
class HighScores
  def initialize(scores)
    @scores = scores
  end

  def scores
    @scores
  end

  def latest
    debug "def latest: #{@scores[-1]}"
    @scores[-1]
  end

  def personal_best
    @scores.max
  end

  def personal_top_three
    max_scores = []
    # makes a copy, need .dup otherwise new variable points to same instance
    # variable and original still gets modified
    @copy_scores = @scores.dup  
    while !@copy_scores.empty? && max_scores.size < 3
      max_scores << @copy_scores.delete_at(@copy_scores.index(@copy_scores.max))
    end
    max_scores
  end

  def latest_is_personal_best?
    latest == personal_best
  end
    
end
    