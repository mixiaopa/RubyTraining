class Array
  ############# use yield directly
  # def filter
  #   result = Array.new
  #   self.each{|e|
  #       result << e if yield e
  #   }
  #   result
  # end

  ############# use block instead
  # def filter(&block)
  #   result = Array.new
  #   self.each{|e|
  #       result << e if block.call e
  #   }
  #   result
  # end




end

############# use yield directly
# p [1, 2, 3, 4].filter{|x| x >= 2}

############# use block instead
# one_proc = proc {|x| x >= 2 }
# p [1, 2, 3, 4].filter(&one_proc)
