class SpellChecker

DICTIONARY = ["this", "This", "is", "spelled", "correctly"]

  def initialize(original_sentence)
    @original_sentence = original_sentence.split
    @new_sentence = []
  end

  def check
    @original_sentence.map do |word|
      if DICTIONARY.include?(word)
      @new_sentence << word
      else
      @new_sentence << "~#{word}~"
      end
    end
    @new_sentence.join(" ")
  end

end
