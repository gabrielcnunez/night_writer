require 'spec_helper'

RSpec.describe NightReader do
  before(:each) do
    @night_reader = NightWriter.new(incoming_braille, outgoing_text)
  end

  describe '#initialize' do
    it 'exists' do
      expect(@night_reader).to be_an_instance_of(NightReader)
    end
  end

  

end