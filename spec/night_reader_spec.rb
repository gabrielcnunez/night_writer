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

end