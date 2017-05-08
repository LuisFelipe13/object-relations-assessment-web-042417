class Customer
  attr_accessor :first_name, :last_name, :full_name, :restaurant, :reviews
  @@all = []

  def initialize(first_name, last_name)
    @reviews = {}
    @first_name = first_name
    @last_name  = last_name
    @full_name = "#{first_name} #{last_name}"
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.all_names
    @all_names = []
  end

  def self.add_review(restaurant, content)
    @reviews = {restaurant => content}
    @reviews
  end

  def self.find_by_name(name)
    @@all.detect{|customer| customer.full_name == name}
  end

  def self.reviews
    @reviews
  end

end
