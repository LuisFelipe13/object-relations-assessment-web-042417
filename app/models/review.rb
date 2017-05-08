class Review
  attr_accessor :review, :customer
  @@all = []

  def initialize(customer, review)
  end

  def self.all
    @@all
  end
end
