require 'pry'

class Owner

  attr_accessor :name, :pets, :fish
  attr_reader :species

  @@all = []

  @@count = 0

  def initialize(name)
    @name = @name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
    @@count += 1
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    fish.owner = self
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    cat.owner = self
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    dog.owner = self
    self.pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |type, pet_group|
      pet_group.each do |pet|
        pet.mood = "nervous"
      end
      pet_group.clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

  def self.all
    @@all
  end

  def self.reset_all
    #binding.pry
    @@all.clear
    @@count = 0
  end

  def self.count
    @@count
  end

  # def self.reset_all
  #   #binding.pry
  #   @@all.clear
  # end

end
