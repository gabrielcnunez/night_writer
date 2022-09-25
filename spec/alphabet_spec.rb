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
    end
  end
end