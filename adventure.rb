class Engine
  def start
    Proc.new do
      main_hallway
    end
  end
end

class Game < Engine
  def main_hallway
    puts 'You are in the main hallway.'
  end
end

new_game = Game.new
new_game.start.call


    