require 'pry'

class Cat
  # code goes here
  attr_accessor :owner, :mood
  attr_reader :name
  
  @@all = []
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end
  
  def owner=(owner)
    if owner.name == "Timmy"
      binding.pry
    end
    @owner = owner
    owner.cats << self
  end
  
  def self.all 
    @@all
  end
end