require 'spec_helper'

RSpec.describe NightReader do
  before(:each) do
    @night_reader = NightReader.new("braille.txt", "original_message.txt")
  end

  describe '#initialize' do
    it 'exists' do
      expect(@night_reader).to be_an_instance_of(NightReader)
    end

    it 'has readable attributes' do
      expect(@night_reader.incoming_braille).to eq("braille.txt")
      expect(@night_reader.outgoing_text).to eq("original_message.txt")
    end
  end

  describe '#read_file' do
    it 'can read a file' do
      expect(@night_reader.read_file).to eq("0.0.0.0.0....00.0.0.00\n" +
                                            "00.00.0..0..00.0000..0\n" +
                                            "....0.0.0....00.0.0...\n")
    end
  end

  describe '#print_reply' do
    it 'can print a reply based on character numbers' do
      expect(@night_reader.print_reply).to eq("Created 'original_message.txt' containing 11 characters")
    end
  end

  describe '#write_to_file' do
    it 'can write a new file' do
      @night_reader.write_to_file

      expect(File.exists?("original_message.txt")).to eq(true)
    end
  end

  describe 'convert_braille_cell_to_array' do
    it 'can convert a braille cell to array of three strings' do
      night_reader = NightReader.new("test_h_braille.txt", "original_message.txt")

      expect(night_reader.convert_braille_cell_to_array).to eq([["0.", "00", ".."]])
    end
  end

  describe '#translate_to_english' do
    xit 'can translate a message from braille cells to letters' do
      expected = 'hello world'

      expect(@night_reader.translate_to_english).to eq(expected)
    end
  end

end