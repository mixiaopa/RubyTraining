require "rspec"
require_relative "../lib/average_split_array.rb"

describe "average_split_array" do

    it "test_should_split_array_to_three_parts" do
      array = (1..10).to_a
      split_array(array, 3).should eq([[1, 4, 7, 10], [2, 5, 8], [3, 6, 9]])
    end

end