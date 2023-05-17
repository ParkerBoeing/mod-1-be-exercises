class Venue
  attr_reader :name, :capacity, :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(patron_name)
    @patrons << patron_name
  end

  def yell_at_patrons
    patrons.map { |patron_name| patron_name.upcase}
  end

  def over_capacity?
    if patrons.count <= @capacity
      return false
    else
      return true
    end
  end

  def kick_out
    while over_capacity?
      patrons.pop
    end
  end
end
