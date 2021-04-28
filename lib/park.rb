class Park
  attr_reader :name,
              :trails

  def initialize(name)
    @name   = name
    @trails = []
  end

  def add_trail(trail)
    @trails << trail
  end

  def trails_shorter_than(distance)
    short_trails = []
    @trails.map do |trail|
      if trail.length < distance
        short_trails << trail
      end
    end
    short_trails
  end

  def hikeable_miles
    @trails.sum do |trail|
      trail.length
    end
  end

  def trails_by_level
    difficulity = {}
    @trails.each do |trail|
      difficulity[trail.level] = [trail.name]
    end
    difficulity
  end

  # def trails_by_level  # My attempts at pushing to the hash key without overwrting the current value
  #   difficulity = {}
  #   @trails.each do |trail|
  #     if difficulity == nil
  #       difficulity[trail.level] = [trail.name]
  #     elsif difficulity != nil
  #       difficulity[trail.level] << [trail.name]
  #     end
  #   end
  #   difficulity
  # end
end
