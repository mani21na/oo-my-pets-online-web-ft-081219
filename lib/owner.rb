require 'pry'

class Owner
  # code goes here
  attr_reader :name, :species
 
  @@all =[]
  
  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
  end
 
  def say_species
    "I am a #{@species}."
  end 
  
  #owner instance methods
  def cats 
    Cat.all.select{|cat| cat.owner == self}
  end
  
  def dogs 
    Dog.all.select{|dog| dog.owner == self}
  end
  
  def buy_cat(name)
    a_cat = Cat.new(name, self)
  end
  
  def buy_dog(name)
    a_dog = Dog.new(name, self)
  end
  
  def walk_dogs
    Dog.all.map{|dog| dog.mood = "happy" if dog.owner == self}
  end  
  
  def feed_cats
    Cat.all.map{|cat| cat.mood = "happy" if cat.owner == self}
  end
  
  def sell_pets
    #pet_list = []
    pet_list = self.dogs + self.cats
    pet_list.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
    #binding.pry
  end 
  
  def list_pets
    return "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
  
  #class methods
  def self.all
    @@all
  end
  
  def self.count
    self.all.size
  end
  
  def self.reset_all
    @@all.clear
  end
end
