require "rspec"
require_relative "../lib/FizzBuzzPrinter.rb"

describe "FizzBuzzPrinter" do

    it "test_shouldPrintFizz" do
      'Fizz'.should eq(printFizzBuzz(3))
    end

    it "test_shouldPrintBuzz" do
      'Buzz'.should eq(printFizzBuzz(5))
    end

    it "test_shouldPrintFizzBuzz" do
      'FizzBuzz'.should eq(printFizzBuzz(15))
    end

    it "test_shouldPrintNumber" do
      '7'.should eq(printFizzBuzz(7))
    end

end