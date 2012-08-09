class Engine
  
  def initialize(start)
    @start = start
  end
  
end

class Rooms < Engine
  
  def initialize(start)
    super(start)
  end
  
  def main_hallway
    puts "You are in the main hallway."
  end
end

new_game = Rooms.new(:main_hallway)
new_game.main_hallway