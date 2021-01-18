class SpellChecker

DICTIONARY = ["This"]

  def initialize(sentence)
    @sentence = sentence
  end

  def check
    if @sentence == DICTIONARY[0]
      @sentence
    else
      "~#{@sentence}~"
    end
  end

end
