require_relative "./animal.rb"
require_relative "./dog.rb"
require_relative "./cat.rb"
require_relative "./fish.rb"
require_relative "./swimmable.rb"
require 'pry'

fido = Dog.new("fido", "poodle")

# puts fido.methods
# puts fido.is_a?(Dog)
# puts fido.is_a?(Animal)

# puts fido.instance_of?(Dog)
# puts fido.instance_of?(Animal)

ella = Cat.new("Ella")

# puts fido.==(ella)
# puts fido.breed

# puts ella.name

# puts ella.breathe

# x = ella.breathe
# puts "The value of x is #{x}"

nemo = Fish.new("Nemo")
puts Fish.can_swim?

# binding.pry
0