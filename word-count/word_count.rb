require 'byebug'

class Phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    words.each_with_object(Hash.new(0)) do |word, frequency|
      frequency[word] += 1
    end
  end

  private
  def words
    # convert the phrase from string to array by words
    @phrase.downcase.scan(/\w+'\w|\w+/)
  end
end
