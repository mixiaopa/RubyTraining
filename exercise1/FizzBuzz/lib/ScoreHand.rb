def scoreHand str
  countA = str.select{|p| p == "A"}.size

  result = str.push(0).reject {|p| p == "A"}.reduce{|sum, p|
    if p =~ /[JQK]/
      p=10
    end
    sum.to_i + p.to_i
    }
  puts result
  if result > 10
    result + 1*countA
  else
    result + 11*countA
  end
end

# scoreHand(["A"])