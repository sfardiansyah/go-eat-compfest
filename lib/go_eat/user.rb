require_relative 'instance'

class User < Instance
  def initialize(coordinate)
    super(coordinate)
    @history = Array.new
  end
end