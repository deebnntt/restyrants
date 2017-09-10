require 'pry'
require_relative './customer.rb'
require_relative './product.rb'
require_relative './review.rb'

mich = Customer.new("Mich", 23, "F")
denny = Customer.new("Denny", 28, "F")
scammergirl = Customer.new("Joanne", 22, "F")
tony = Customer.new("Tony", 45, "M")
carmela = Customer.new("Carmela", 45, "F")

glock = Product.new("Glock 9mm", "guns & ammo")
fidget_spinner = Product.new("Fidget Spinner", "toys & games")
jolie_doll = Product.new("Jolie Doll", "toys & games")
kylie_lip_kit = Product.new("Kylie Lip Kit", "cosmetics")

Review.new("This gun is simply iconic. I used this to scam several men and commit several acts of fraudulence. Let's chat later.", scammergirl, glock, 5)
Review.new("Not a bad gun.", tony, glock, 4)
Review.new("This toy is real cute.  I got one for my daughter, Meadow. Really cracked her up.", tony, jolie_doll, 4)
Review.new("Made people think this dog was real. Great for subterfuge.  Simply iconic.", scammergirl, jolie_doll, 5)
Review.new("JOLIIIIIIE", mich, jolie_doll, 5)
Review.new("Not as cute as my Jolie.", denny, jolie_doll, 3)
Review.new("Looks great against this caucasian skin.  Simply iconic.", scammergirl, kylie_lip_kit, 5)
Review.new("Makes my lips dry :(", denny, kylie_lip_kit, 3)
Review.new("I look gooood", mich, kylie_lip_kit, 4)
Review.new("Not very becoming.", carmela, kylie_lip_kit, 2)
Review.new("Highly addictive", denny, fidget_spinner, 4)
Review.new("10/10 would recommend", mich, fidget_spinner, 5)

binding.pry
