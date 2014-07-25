require "rspec"
require_relative "../lib/ScoreHand.rb"

describe "ScoreHand" do

    it "test_shouldReturnElevenWhenGetA" do
      scoreHand(["A"]).should eq(11)
    end

    it "test_shouldReturn21WhenGetAJ" do
      scoreHand(["A", "J"]).should eq(21)
    end

    it "test_shouldReturn12WhenGetA10A" do
      scoreHand(["A", "10", "A"]).should eq(12)
    end

    it "test_shouldReturn15WhenGet537" do
      scoreHand(["5", "3", "7"]).should eq(15)
    end

    it "test_shouldReturn25WhenGet5432AK" do
      scoreHand(["5", "4", "3", "2", "A", "K"]).should eq(25)
    end

end