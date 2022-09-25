require 'spec_helper'

RSpec.describe NightWriter do
  describe '#initialize' do
    it 'exists' do
      night_writer = NightWriter.new("message.txt", "braille.txt")

      expect(night_writer).to be_an_instance_of(NightWriter)
    end
  end

  describe '#print_reply' do
    it 'can print static reply' do
    end

    it 'can print dynamic reply based on character numbers' do

    end
  end
  
end