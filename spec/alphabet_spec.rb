require 'spec_helper'

RSpec.describe Alphabet do
  before(:each) do
    @alphabet = Alphabet.new
  end
  
  describe '#initialize' do
    it 'exists' do
      expect(@alphabet).to be_an_instance_of(Alphabet)
    end

    it 'has readable attributes' do
      expect(@alphabet.characters["h"]).to eq(["0.", "00", ".."])
      expect(@alphabet.characters["e"]).to eq(["0.", ".0", ".."])
      expect(@alphabet.characters["l"]).to eq(["0.", "0.", "0."])
      expect(@alphabet.characters["o"]).to eq(["0.", ".0", "0."])
      expect(@alphabet.characters[" "]).to eq(["..", "..", ".."])
      expect(@alphabet.characters["w"]).to eq([".0", "00", ".0"])
      expect(@alphabet.characters["r"]).to eq(["0.", "00", "0."])
      expect(@alphabet.characters["d"]).to eq(["00", ".0", ".."])
    end
  end

  describe '#english_to_braille' do
    it 'can translate a single character' do
      sing_char = "h"

      expect(@alphabet.english_to_braille(sing_char)).to eq(["0.", "00", ".."])
    end
  end

  describe '#format_braille' do
    it 'can format braille array to three arrays of strings' do
      raw_hello = [["0.", "00", ".."], ["0.", ".0", ".."], ["0.", "0.", "0."],
                   ["0.", "0.", "0."], ["0.", ".0", "0."]]
      formatted_hello = ["0.0.0.0.0.", "00.00.0..0", "....0.0.0."]
      expect(@alphabet.format_braille(raw_hello)).to eq(formatted_hello)
    end
  end
  
  describe '#braille_wrap' do
    it 'can wrap message over 80 braille characters to multiple lines' do
      raw_message = [
                    ".00.00...00.0.0.0.00...0..000.0.00000...0.0....0.0...00.0...0.000....00.0....00.000..0",
                    "0000.0..0.00.0..0..0..0.....00...000.0..00.0..0.0...0000.0...0.0.0..0000.0..0.......0.",
                    ".0..00..0...0.000...............0...............0...0.......0.0......0..0...0.00..0.0."]

      wrapped_message = ".00.00...00.0.0.0.00...0..000.0.00000...0.0....0.0...00.0...0.000....00.0....00.\n" +
                          "0000.0..0.00.0..0..0..0.....00...000.0..00.0..0.0...0000.0...0.0.0..0000.0..0...\n" +
                          ".0..00..0...0.000...............0...............0...0.......0.0......0..0...0.00\n" +
                          "000..0\n" +
                          "....0.\n" +
                          "..0.0.\n"
                      
      expect(@alphabet.braille_wrap(raw_message)).to eq(wrapped_message)
    end
  end

  describe '#braille_to_english' do
    it 'can translate a single braille cell' do
      sing_cell = ["0.", "00", ".."]

      expect(@alphabet.braille_to_english(sing_cell)).to eq("h")
    end
  end

end