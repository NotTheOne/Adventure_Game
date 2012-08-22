class Engine
  def initialize(start)
    @start = start
  end
  
  
  def play 
    next_room = @start  
    while true 
      room = method(next_room)
      next_room = room.call
    end
  end
  
def prompt
  print "> "
end

end

class Game < Engine
  def initialize(start)
    @start = start
  end
  
  def main_hallway
    puts "You are in the main hallway."
    puts "go to the east room."

    prompt()
    choice = gets.chomp()

    if choice == 'east room'
      return :east_room
    end
  end
   
  def east_room
    puts 'This is the east room.'
  end
end
  
new_game = Game.new(:main_hallway)
new_game.play()

  