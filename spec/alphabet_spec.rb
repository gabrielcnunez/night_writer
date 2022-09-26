require 'spec_helper'

RSpec.describe Alphabet do
  describe '#initialize' do
    it 'exists' do
      alphabet = Alphabet.new

      expect(alphabet).to be_an_instance_of(Alphabet)
    end

    it 'has readable attributes' do
      alphabet = Alphabet.new
      
      expect(alphabet.characters["h"]).to eq(["0.", "00", ".."])
      expect(alphabet.characters["e"]).to eq(["0.", ".0", ".."])
      expect(alphabet.characters["l"]).to eq(["0.", "0.", "0."])
      expect(alphabet.characters["o"]).to eq(["0.", ".0", "0."])
      expect(alphabet.characters[" "]).to eq(["..", "..", ".."])
      expect(alphabet.characters["w"]).to eq([".0", "00", ".0"])
      expect(alphabet.characters["r"]).to eq(["0.", "00", "0."])
      expect(alphabet.characters["d"]).to eq(["00", ".0", ".."])
    end
  end

  describe '#english_to_braille' do
    it 'can translate a single character' do
      alphabet = Alphabet.new
      sing_char = "h"

      expect(alphabet.convert_to_braille(sing_char)).to eq(["0.", "00", ".."])
    end

  end

end