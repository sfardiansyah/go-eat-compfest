require_relative 'go_eat/coordinate'
require_relative 'go_eat/driver'
require_relative 'go_eat/map'
require_relative 'go_eat/store'
require_relative 'go_eat/transaction'
require_relative 'go_eat/user'

class GoEat
  def initialize(size, x=rand(size), y=rand(size))
    @size = size
    @map = Map.new(size)
    @used_coordinates = Array.new

    @user = generate_user(x, y)
    @drivers = generate(Driver, 5)
    @stores = generate(Store, 3)
  end

  def print_map()
    @map.print()
  end

  def generate_user(x, y)
    coordinate = Coordinate.new(x, y)
    @used_coordinates.push(coordinate)

    return User.new(coordinate)
  end

  def generate(class_type, n)
    items = Array.new(n)
    items.each do |item|
      coordinate = Coordinate.new(rand(@size), rand(@size))
      while @used_coordinates.include? coordinate
        coordinate = Coordinate.new(rand(@size), rand(@size))
      end

      @used_coordinates.push(coordinate)

      item = class_type.new(coordinate)
    end
    return items 
  end

  def print_used_coordinates()
    @used_coordinates.each do |c|
      puts [c.x, c.y].join(" ")
    end
  end
end

go = GoEat.new(5)
go.print_used_coordinates()
