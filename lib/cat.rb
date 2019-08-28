require 'pry'

class Cat
  # code goes here
  attr_accessor :owner, :mood, :name
  attr_reader 
  
  @@all = []
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    owner.cat << self
    @mood = "nervous"
    @@all << self
  end
  
  def self.all 
    @@all
  end
end