def scoreHand str
  countA = str.select{|p| p == "A"}.size

  result = str.push(0).reject {|p| p == "A"}.reduce{|sum, p|
    if p =~ /[JQK]/ || sum =~ /[JQK]/
      if p =~ /[JQK]/
        p=10
      end
      if sum =~ /[JQK]/
        sum = 10
      end
    end
    sum.to_i + p.to_i
    }

  if countA >= 1
      result += countA * 11
      if result > 21
        result -= 10 * countA
      end
  end

  return result
end
