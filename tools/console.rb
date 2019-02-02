require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

cult1 = Cult.new("cult1", "nyc", 1980, "go for it")
cult2 = Cult.new("cult2", "l.a.", 1981, "don't go for it")
cult3 = Cult.new("cult3", "nyc", 1982, "cold, dude")





follower1 = Follower.new("follower1", 21, "i'm alive!")
follower2 = Follower.new("follower2", 22, "tgif")
follower3 = Follower.new("follower3", 22, "okee dokee")
follower4 = Follower.new("follower4", 42, "okee dokee")




# oath1 = BloodOath.new(follower1, cult1)
oath2 = BloodOath.new(follower1, cult2)

oath1 = cult1.recruit_follower(follower1)

cult2.followers

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
