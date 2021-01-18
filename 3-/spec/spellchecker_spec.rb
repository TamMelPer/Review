require 'spellchecker'

describe SpellChecker do

  describe '#check' do
    it 'returns the correctly spelled word' do
      sentence = SpellChecker.new("This")
      expect(sentence.check).to eq "This"
    end
  end

end
