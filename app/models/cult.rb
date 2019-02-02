class Cult

  @@all = []

  attr_accessor :name, :location, :founding_year, :slogan, :followers

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @@all << self
    # @followers = []
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.select do |cults|
       if cults.name == name
      cults
      end
    end
  end

  def self.find_by_location(location)
    @@all.select do |cults|
       if cults.location == location
       cults
      end
    end
  end


  def self.find_by_founding_year(founding_year)
    @@all.select do |cults|
       if cults.founding_year == founding_year
       cults
      end
    end
  end

  def recruit_follower(follower)

    BloodOath.new(follower, self)
  end

  def cult_population
    self.recruit_follower.length
  end

  # find followers of the cult
  # what i know:
      # current cult == self

  #what i need to know:
      # need list of all followers
      # which follow my cult
  def followers
    BloodOath.all.select do |bloodoath|
      # bindbling.pry
    bloodoath.cult.name == self.name
    end
  end












end #end of Cult class
