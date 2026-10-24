=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

class Phrase
  def initialize(words)
    @words = words
  end

  def word_count
    hash = {}
    @words.scan(/\w(?:['\w]*\w)?/) do |word|
      word = word.downcase
      hash.include?(word) ? hash[word] += 1 : hash[word] = 1
    end
    hash
  end
end
    