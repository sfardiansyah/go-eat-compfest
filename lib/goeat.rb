class Driver
  def initialize(rating=0.0)
    @rating = rating
  end

  def rating
    @rating
  end
end

class Store

end

class User
  def initialize(x, y)
    @x = x
    @y = y
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
  def initialize(size)
    @map = Map.new(size)
    @drivers = Array.new(5){Driver.new}
    @stores = Array.new(3){Store.new}

    user_x = rand(size)
    user_y = rand(size)
    @user = User.new(user_x, user_y)
  end

  def print_map()
    @map.print()
  end
end

go = GoEat.new(5)
go.print_map()
