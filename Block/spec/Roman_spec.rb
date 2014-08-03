require 'rspec'
require_relative '../lib/Roman.rb'

describe 'Roman' do

  it "test_should_convert_number_to_roman_notation" do
    Roman.new.encode(1234).should eq('MCCXXXIV')
    Roman.new.encode(2014).should eq('MMXIV')
  end

end