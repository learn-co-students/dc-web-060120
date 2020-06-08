require 'pry'
require_relative './cat.rb'
require_relative './dog.rb'
class Owner
  
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.all
    @@all
  end

  def self.count
    # self.all.length
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def cats
    Cat.all.select do |feline|
      feline.owner == self
    end
  end

  def dogs
    Dog.all.select do |canine|
      canine.owner == self
    end
  end

  def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end

  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end

  def walk_dogs
    self.dogs.each do |dog| 
      dog.mood = "happy"
    end
  end

  def feed_cats
    self.cats.each do |feline|
      feline.mood = "happy"
    end
  end

  def sell_pets
    self.cats.each do |feline|
      feline.owner = nil
      feline.mood = "nervous"
    end
    self.dogs.each do |canine|
      canine.owner = nil
      canine.mood = "nervous"
    end
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

end