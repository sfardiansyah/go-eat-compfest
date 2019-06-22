require_relative 'instance'

class Store < Instance
  def initialize(coordinate)
    super(coordinate)
  end

  def to_s
    "S"
  end
end