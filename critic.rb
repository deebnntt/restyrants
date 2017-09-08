class Critic
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def write_review(title, restaurant, star_rating)
    Review.new(title, self, restaurant, star_rating)
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.critic == self
    end
  end

  def restaurants
    self.reviews.collect do |reviews|
      reviews.restaurant.name
    end
  end

  def most_visited_restaurants
    count =  Hash.new(0)
    self.restaurants.each { |restaurant| count[restaurant] += 1 }
    count.sort_by{|k,v| v}.reverse
  end

#   result = Hash.new(0)
# words.each { |word| result[word] += 1 }
# return result

end
