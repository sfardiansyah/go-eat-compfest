require_relative 'instance'

class Store < Instance
  attr_reader :menu
  
  def initialize(coordinate)
    super(coordinate)
    @menu = generate_menu(rand(2..10))
  end

  def to_s
    "S"
  end

  def print_menu
    @menu.each_with_index do |price, i|
      puts "- Item #{i+1}: Rp #{price}"
    end
  end

  def generate_menu(n)
    menu = Array.new(n) {rand(100..500) * 100}
    return menu
  end
end