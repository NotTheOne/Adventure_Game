class Engine
  
  def initialize(start)
    @start = start
  end
  
  def play
    next_room = @start
    
    while true
      room = method(next_room)
      next_room = room.call()
    end
  end

  
end

new_game = Engine.new(:main_hallway)
new_game.play




