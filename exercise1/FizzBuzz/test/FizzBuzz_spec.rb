require 'rspec'
#require_relative "../src/FizzBuzzPrinter.rb"

describe 'FizzBuzzPrinter' do

  def test_shouldPrintFizz
    assert_equal('Fizz',printFizzBuzz(3))
    puts message
  end

  def test_shouldPrintFizz
    assert_equal('Buzz',printFizzBuzz(5))
    puts message
  end

  def test_shouldPrintFizz
    assert_equal('FizzBuzz',printFizzBuzz(15))
    puts message
  end

  def test_shouldPrintFizz
    assert_equal('7',printFizzBuzz(7))
    puts message
  end

end