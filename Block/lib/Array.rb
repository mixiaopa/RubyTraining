class Array
  def group_by1
    result = Hash.new
    result_final = Array.new
    result_true = Array.new
    result_false = Array.new
    self.each{|e|
        if yield e
          result_true << e
        else
          result_false << e
        end
    }
    result[false] = result_false
    result[true] = result_true

    result_final << result
  end

  def inject1
    result = 0
    self.each{|e|
      result = yield e.to_i, result
    }
    result
  end
end
