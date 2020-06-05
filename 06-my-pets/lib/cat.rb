class Cat
  attr_reader  :name
  attr_accessor :owner, :mood

  @@all = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    binding.pry
    @@all << self
  end

  def self.all
    @@all
  end

  def say_name
    "Meow! My name is #{self.name}. Meow!"
  end
end