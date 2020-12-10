class Dog

  @@all = []

  attr_reader :name
  attr_accessor :mood, :owner

  def initialize( this_name, this_owner )
    @name = this_name
    @owner = this_owner
    @mood = "nervous"
    @@all << self
  end

  def self.all
    @@all
  end

end