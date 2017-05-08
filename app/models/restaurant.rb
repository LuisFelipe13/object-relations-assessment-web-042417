class Restaurant
  attr_accessor :name, :customer, :review
  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.detect{|restaurant| restaurant.name == name}
  end
end
