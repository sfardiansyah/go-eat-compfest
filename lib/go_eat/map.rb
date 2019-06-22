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