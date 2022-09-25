require 'spec_helper'

RSpec.describe NightWriter do
  describe '#initialize' do
    it 'exists' do
      night_writer = NightWriter.new("hello_world.txt", "braille.txt")

      expect(night_writer).to be_an_instance_of(NightWriter)
    end
  end

  describe '#print_reply' do
    it 'can print a reply based on character numbers' do
      night_writer = NightWriter.new("hello_world.txt", "braille.txt")

      expect(night_writer.print_reply).to eq("Created 'braille.txt' containing 11 characters")
    end
  end
  
  describe '#write_to_file' do
    # wip
    xit 'can write a new file' do
      night_writer = NightWriter.new("hello_world.txt", "braille.txt")

      expect
    end
  end
end