# class Girl
#   def initialize()
#     self.gender = 'female'
#   end
#   def name=(value)
#     @name = value
#   end
#   def name
#     @name
#   end
#   def age=(value)
#     @age = value
#   end
#   def gender
#     @gender
#   end
# end

# class Boy
#   attr_accessor :name
#   attr_writer :age
#   attr_reader :gender
#
#   def initialize()
#     self.gender = 'male'
#   end
# end

class Girl
  def self.my_attr_assessor attr_name
    define_method("#{attr_name}=".to_sym) do |value|
      instance_variable_set("@#{attr_name}", value)
      instance_variable_get("@#{attr_name}")
    end
  end

  def self.my_attr_writer attr_name
    define_method("#{attr_name}=".to_sym) do |value|
      instance_variable_set("@#{attr_name}", value)
    end
  end

  def self.my_attr_reader attr_name
    instance_variable_get("@#{attr_name}")
  end

  my_attr_assessor :name
  my_attr_writer :age
  my_attr_reader :gender

  def initialize()
    @gender = 'female'
  end
end