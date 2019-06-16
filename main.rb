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

end

class Map
    def initialize(size)
        @grid = Array.new(size) { Array.new(size) }
        puts @grid.length
        puts @grid[0].length
    end
end

m = Map.new(5)
d = Driver.new()

puts d.rating

