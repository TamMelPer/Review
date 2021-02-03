class SpellChecker

DICTIONARY = ["this", "This", "is", "spelled", "correctly"]

  def initialize(original_sentence)
    @original_sentence = original_sentence.split
    @new_sentence = []
  end

  def check
    check_correct_spelling
    @new_sentence.join(" ")
  end


  private

  def check_correct_spelling
    @original_sentence.map do |word|
      if DICTIONARY.include?(word)
      @new_sentence << word
      else
      @new_sentence << "~#{word}~"
      end
    end
    @new_sentence
  end

end
