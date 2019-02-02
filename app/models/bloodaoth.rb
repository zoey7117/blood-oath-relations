class BloodOath

  @@all = []

  attr_accessor :follower, :cult
  attr_reader :initiation_date

  def initialize(follower, cult)
    @follower = follower
    @cult = cult
    @initiation_date = Time.now.strftime("%Y-%m-%d")
    @@all << self
  end

  def self.all
    @@all
  end



end #end of BloodOath class
