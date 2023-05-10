class Dragon
  attr_reader :name,
              :color,
              :rider,
              :food
              
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @food = 0
  end

  def hungry?
    return true if @food <= 2
        false
  end

  def eat
   @food += 1
  end
  
end