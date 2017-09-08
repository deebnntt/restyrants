require 'pry'
require_relative './critic.rb'
require_relative './restaurant.rb'
require_relative './review.rb'


jeff = Critic.new("Jeff")
elbin = Critic.new("Elbin")
piopio = Restaurant.new("Pio Pio", "Peruvian-Chinese", "Midtown")
whitecastle = Restaurant.new("White Castle", "America Fuck Yeah", "Everywhere")
jeff.write_review("Pio Pio more like pee-you pee-you", piopio, 1)
jeff.write_review("White Castle more like pee-you pee-you", whitecastle, 3)
elbin.write_review("Green sauce == (i'm a coder) crack", piopio, 10)
jeff.write_review("I'm sorry WhiteCastle I was sad", whitecastle, 10)



binding.pry
