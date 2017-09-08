class Restaurant
  attr_accessor :name, :cuisine, :location

  @@all = []

  def initialize(name, cuisine, location)
    @name = name
    @cuisine = cuisine
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_ratings
    self.reviews.sum(&:star_rating)/self.reviews.count
  end

  def self.cuisines(cuisine)
    self.all.select do |restyraunts|
      restyraunts.cuisine == cuisine
    end
  end



end
