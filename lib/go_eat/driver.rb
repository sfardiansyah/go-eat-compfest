class Driver
  attr_reader :rating

  def initialize(coordinate, rating=0.0)
    @coordinate = coordinate
    @rating = rating
  end
end