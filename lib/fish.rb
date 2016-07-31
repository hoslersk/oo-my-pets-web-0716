class Fish
  # code goes here
  attr_reader :name
  attr_accessor :mood, :owner

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

end
