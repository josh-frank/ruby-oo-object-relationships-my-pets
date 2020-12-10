class Cat

  @@all = []
  attr_accessor :owner, :mood
  attr_reader :name

  def initialize(this_name, this_owner)
    @name = this_name
    @owner = this_owner
    @@all << self
    @mood = "nervous"

  end

  def self.all
    @@all
  end
end