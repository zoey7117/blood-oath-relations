
class Follower

  @@all = []

  attr_accessor :name, :age, :life_motto

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def self.all
    @@all
  end

  #want to know the followers that have the given age
  #do select to iterate
  #go through all my followers


  def self.of_a_certain_age(age)
    # binding.pry
    @@all.select do |followers|
      if followers.age >= age
        followers
      end
    end
  end
  #adds the follower instance to the cult arg

  #is this code right??
  def join_cult(cult)
    cult.followers << self
  end




end #end of Follower class
