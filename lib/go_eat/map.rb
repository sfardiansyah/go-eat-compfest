class Map
  def initialize(size)
    @grid = Array.new(size) { Array.new(size) { "." } }
  end

  def print
    @grid.each do |col|
      puts col.each { |row| row }.join(" ")
    end
  end

  def insert(item)
    @grid[item.coordinate.x][item.coordinate.y] = item
  end
end