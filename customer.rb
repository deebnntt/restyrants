class Customer

attr_reader :name, :age, :gender

@@all = []

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
    @@all << self
  end

  def self.all
    @@all
  end

  def write_review(title, product, star_rating)
    Review.new(title, self, product, star_rating)
  end

  def reviews_by_customer
    Review.all.select do |review|
      review.customer == self
    end
  end

  def self.young_customers
    self.all.select do |customer|
      customer.age < 30
    end
  end

  def self.by_gender(gender)
    self.all.select do |customer|
      customer.gender == gender
    end
  end


end
