class Review

  attr_reader :title, :critic, :restaurant, :star_rating

  @@all = []

  def initialize(title, critic, restaurant, star_rating)
    @title = title
    @critic = critic
    @restaurant = restaurant
    @star_rating = star_rating
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_title(title)
    self.all.select do |bag_of_dicks|
      bag_of_dicks.title == title
    end
  end

end
