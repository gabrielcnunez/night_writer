require 'spec_helper'

RSpec.describe NightWriter do
  before(:each) do
    @night_writer = NightWriter.new("hello_world.txt", "braille.txt")
  end

  describe '#initialize' do
    it 'exists' do
      expect(@night_writer).to be_an_instance_of(NightWriter)
    end
  end

  describe '#read_file' do
    it 'can read a file' do
      expect(@night_writer.read_file).to eq("hello world")
    end
  end

  describe '#print_reply' do
    it 'can print a reply based on character numbers' do
      expect(@night_writer.print_reply).to eq("Created 'braille.txt' containing 11 characters")
    end
  end
  
  describe '#write_to_file' do
    it 'can write a new file' do
      @night_writer.write_to_file

      expect(File.exists?("braille.txt")).to eq(true)
    end
  end

  describe '#translate_to_braille' do
    it 'can translate a message from letters to braille' do
      expected = "0.0.0.0.0....00.0.0.00\n00.00.0..0..00.0000..0\n....0.0.0....00.0.0..."
      
      expect(@night_writer.translate_to_braille).to eq(expected)
    end
  end
end