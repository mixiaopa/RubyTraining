def printFizzBuzz num
  if num % 3 == 0 && num % 5 != 0
    return "Fizz"

  elsif num % 5 == 0 && num % 3 != 0
    return "Buzz"

  elsif num % 15 == 0
    return "FizzBuzz"

  else
    return num.to_s
  end

end
