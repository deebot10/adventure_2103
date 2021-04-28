class Hiker
  attr_reader :name,
              :experience_level,
              :snacks,
              :parks_visted

  def initialize(name, experience_level)
    @name             = name
    @experience_level = experience_level
    @snacks           = Hash.new(0)
    @parks_visted     = []
  end

  def pack(snack, quantity)
    @snacks[snack] += quantity
  end

  def visit(park)
    @parks_visted << park
  end

  def possible_trails
    we_hiking = []
    @parks_visted.each do |park|
      park.trails.each do |trail|
        if trail.level == @experience_level
          we_hiking << trail
        end
      end
    end
    we_hiking
  end

  def favorite_snack
    @snacks.max_by do|k, v|
       v
    end[0]
  end
end
