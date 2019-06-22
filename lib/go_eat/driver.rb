require_relative 'instance'

class Driver < Instance
  attr_reader :rating

  def initialize(coordinate, rating=0.0)
    super(coordinate)
    @rating = rating
  end
end