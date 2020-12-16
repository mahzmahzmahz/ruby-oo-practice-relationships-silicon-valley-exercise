require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

startup1 = Startup.new("Tybalt", "Alex Marz", "Healthcare")
startup2 = Startup.new("Flowrr", "Sam Dozor", "Healthcare")
startup3 = Startup.new("Spectacle", "Emily Loewus", "Tech")
startup4 = Startup.new("Bonne Temps", "Dan Truly", "Social Media")


vc1 = VentureCapitalist.new("Fat Cat Moneybags", 50000000)
vc2 = VentureCapitalist.new("George P Bottomtooth", 12000000000)
vc3 = VentureCapitalist.new("Patricia Lee Henderson", 5000000000)
vc4 = VentureCapitalist.new("Momo LeFontain", 80000000000)

round1 = FundingRound.new(startup1, vc1, "Initial", 1000000)
round2 = FundingRound.new(startup2, vc1, "Angel", 40000000)
round3 = FundingRound.new(startup3, vc3, "Friends and Fam", 100000)
round4 = FundingRound.new(startup1, vc4, "Upfront", 10000000000)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line