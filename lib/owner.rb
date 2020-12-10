require 'pry'
require_relative 'cat.rb'
require_relative 'dog.rb'
class Owner

  @@all = []

  attr_reader :name, :species

  def initialize( this_name )
    @name = this_name
    @species = "human"
    @@all << self
  end

  def say_species
    "I am a human."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    Cat.all.select {|cat| cat.owner == self }
  end
  
  def dogs
    Dog.all.select {|dog| dog.owner == self }
  end

  def buy_cat(new_cat_name)
    new_cat = Cat.new(new_cat_name, self)
    @@all << new_cat
  end

  def buy_dog(new_dog_name)
    new_dog = Dog.new(new_dog_name, self)
    @@all << new_dog
  end
  
  def walk_dogs
    self.dogs.each { | dog | dog.mood = "happy" }
  end

  def feed_cats
    self.cats.each{ | cat | cat.mood = "happy" }
  end

  def sell_pets
    self.cats.each{ | cat | cat.mood = "nervous" }
    self.dogs.each{ | dog | dog.mood = "nervous" }
    self.cats.each{ | cat | cat.owner = nil }
    self.dogs.each{ | dog | dog.owner = nil }
#    @@all.clear
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

end
#  binding.pry
#  0