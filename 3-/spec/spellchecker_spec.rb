require 'spellchecker'

describe SpellChecker do

  describe '#check' do
    it 'returns the correctly spelled word' do
      sentence = SpellChecker.new("This")
      expect(sentence.check).to eq "This"
    end

    it 'returns the incorrectly spelled word with tildas around it' do
      sentence = SpellChecker.new("Ths")
      expect(sentence.check).to eq "~Ths~"
    end

    it 'returns the correctly spelled word with casing' do
      sentence = SpellChecker.new("this")
      expect(sentence.check).to eq "this"
    end

    it 'returns the sentence with an incorrect word between tildas' do
      sentence = SpellChecker.new("This is spelled crrectly")
      expect(sentence.check).to eq "This is spelled ~crrectly~"
    end

  end

end
