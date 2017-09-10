class Review

attr_reader :title, :customer, :star_rating, :product

@@all = []

  def initialize(title, customer, product, star_rating)
    @title = title
    @customer = customer
    @product = product
    @star_rating = star_rating
    @@all << self
  end

  def self.all
    @@all
  end

  def self.iconic
    self.all.select do |review|
      review.title.include?("iconic")
    end
  end

  def self.reviewed_products
    self.all.collect do |reviews|
      reviews.product.name
    end.uniq
  end

  def self.most_rated
    rated_products =  self.all.collect { |reviews| reviews.product.name }
    count =  Hash.new(0)
    rated_products.each { |product| count[product] += 1 }
    count.sort_by{|k,v| v}.reverse
  end

  def self.most_frequent_reviewer
    customers =  self.all.collect { |reviews| reviews.customer.name }
    count =  Hash.new(0)
    customers.each { |customer| count[customer] += 1 }
    count.sort_by{|k,v| v}.reverse
  end

end
