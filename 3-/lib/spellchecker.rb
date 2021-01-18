class SpellChecker

DICTIONARY = ["this", "This"]

  def initialize(sentence)
    @sentence = sentence
  end

  def check
    if DICTIONARY.include?(@sentence)
      @sentence
    else
      "~#{@sentence}~"
    end
  end

end
