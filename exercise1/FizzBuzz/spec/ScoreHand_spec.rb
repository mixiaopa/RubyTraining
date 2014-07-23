require "rspec"
require_relative "../lib/ScoreHand.rb"

describe "ScoreHand" do

    it "test_shouldReturnElevenWhenGetA" do
      11.should eq(scoreHand(["A"]))
    end

    it "test_shouldReturn21WhenGetAJ" do
      21.should eq(scoreHand(["A", "J"]))
    end

    it "test_shouldReturn12WhenGetA10A" do
      12.should eq(scoreHand(["A", "10", "A"]))
    end


end