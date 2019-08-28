require 'pry'

class Cat
  # code goes here
  attr_reader :name, :owner, :mood
  
  @@all = []
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end
  
  def owner=(owner)
    if owner.name == "Timmy"
    #binding.pry
    @owner = owner
    owner.cats << self
  end
  
  def mood=(mood)
    @mood = mood
  end
  
  def self.all 
    @@all
  end
end