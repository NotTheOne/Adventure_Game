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
        next_room = room.call()
      end
  end
  
  def prompt
    print "> "
  end
  
  def death
    puts @insults[rand(@insults.length)]
    Process.exit(1)
  end
  
#  def encounter
 #   while @chance < 3
  #    return :west_room
      
   #   if @chance > 
  #      puts 'An enemy approache'
   #   end
    #end
    
      
#  end
    


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
    
    puts 'You are in the west room.'
   # return :encounter
  end
  
  def east_room
    puts 'You are in the east room.'
  #  return :encounter
    
  end
  
end


new_game = Game.new(:main_hallway)
new_game.play
  

