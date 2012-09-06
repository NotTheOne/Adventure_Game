class Engine
  def initialize(start)
    @start = start
    @insults = ['Can\'t you follow directions.', 
                'You suck at this.',
                'You are dead.' ]
    @chance = rand(1..10)
            
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
  
  def death
    puts @insults[rand(@insults.length)]
    Process.exit(1)
  end
  
  def encounter
    while @chance >= 5
      puts 'An enemey approaches.'
      Process.exit(1)
      if @chance <= 5
        play
      end
    end
  end
  
  def fight
  end

end

class Game < Engine
  
  def main_hallway
    puts 'You are in the main hallway, there are two doors to the right and left of you.'
    puts 'Which one will you take?'
    
   prompt; answer = gets.chomp
    
    if answer == 'left'
      return :west_room
    elsif answer == 'right'
      return :east_room
    else
      puts 'Please choose left or right.'
      return :main_hallway
  end
  end
  
  def west_room
    encounter
    puts 'You are in the west room.'

  end
  
  def east_room
    encounter
    puts 'You are in the east room.'

    
  end
  
end


new_game = Game.new(:main_hallway)
new_game.play
  

