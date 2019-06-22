class Driver
  attr_reader :rating

  def initialize(coordinate, rating=0.0)
    @coordinate = coordinate
    @rating = rating
  end
end

class Store
  def initialize(coordinate)
    @coordinate = coordinate
  end
end

class User
  def initialize(coordinate)
    @coordinate = coordinate
    @history = Array.new
  end
end

class Coordinate
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end
end

class Transaction

end

class Map
  def initialize(size)
    @grid = Array.new(size) { Array.new(size) }
  end

  def print()
    @grid.each do |col|
      puts col.join("-")
    end
  end
end

class GoEat
  def initialize(size, x=rand(size), y=rand(size))
    @size = size
    @map = Map.new(size)
    @used_coordinates = Array.new

    @user = generate_user(x, y)
    @drivers = generate_drivers()
    @stores = generate_stores()
  end

  def print_map()
    @map.print()
  end

  def generate_user(x, y)
    coordinate = Coordinate.new(x, y)
    @used_coordinates.push(coordinate)

    return User.new(coordinate)
  end

  def generate_drivers()
    return generate(Driver, 5)
  end

  def generate_stores()
    return generate(Store, 3)
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
