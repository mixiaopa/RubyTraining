# class Array
#   def group_by1
#     result = Hash.new
#     result_final = Array.new
#     result_true = Array.new
#     result_false = Array.new
#     self.each{|e|
#         if yield e
#           result_true << e
#         else
#           result_false << e
#         end
#     }
#     result[false] = result_false
#     result[true] = result_true
#
#     result_final << result
#   end
#
#   def inject1
#     result = 0
#     self.each{|e|
#       result = yield e.to_i, result
#     }
#     result
#   end
#
#
# end
#


### Ruby OO Practice ###########################
# module Try
#   def sum
#     self.reduce{|a, b|
#       a + b
#     }
#   end
#
# end
#
#
# class Array
#   include Try
# end
#
# class Range
#   include Try
# end
#
# p [1,2,3,4,5].sum # =>15
# p ('a'..'m').sum # => "abcdefghijklm"
### Ruby OO Practice ###########################


#
# module Try
#   def inject op
#     self.scan.each { |v|
#       if v =~ /[aeiou]/
#         result += v
#       end
#     }
#   end
# end
#
# class VowelFinder
#   include Enumerable
#   attr_reader :value
#   def initialize(value)
#     @value= value
#   end
#
#   def each
#     @value.scan(/[aeiou]/).each { |p|
#       yield p
#     }
#   end
# end
#
# finder = VowelFinder.new("the quick brown fox jumped")
# p finder.inject(:+) # => "euiooue"



# p Object.class.ancestors # => [Class, Module, Object, Kernel, BasicObject]
p Class.new


# p Class.instance_methods(false) # => [:allocate, :new, :superclass]
# p Class.instance_methods(false) # => [:allocate, :new, :superclass]













