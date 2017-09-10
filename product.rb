class Product

attr_reader :name, :type

@@all = []

  def initialize(name, type)
    @name = name
    @type = type
    @@all << self
  end

  def self.all
    @@all
  end

  def self.product_by_type(type)
    self.all.select do |product|
      product.type == type
    end
  end

  def reviews
    Review.all.select do |review|
      review.product == self
    end
  end

  def star_rating
    self.reviews.map do |r|
      r.star_rating
    end.instance_eval { reduce(:+) / size.to_f }
  end

  def self.highest_rating
    item = self.all.max_by {|x| x.star_rating}
    hash = {item.name => item.star_rating}
  end

  def self.lowest_rating
    item = self.all.min_by {|x| x.star_rating}
    hash = {item.name => item.star_rating}
  end

end
