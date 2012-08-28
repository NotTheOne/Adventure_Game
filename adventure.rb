class Imp
  attr_accessor :hp, :defense, :atk
  def intialize(hp, defense, atk)
    @hp = hp
    @defense = defense
    @atk = atk
  end
end

class Hero
  attr_accessor :hp, :defense, :atk
  def intialize(hp, defense, atk)
    @hp = hp
    @defense = defense
    @atk = atk
  end
  
  def attack
    if action == 'hit'
      puts "The hero attacked."
    else 
      puts 'what\'s your next move?'
end
  

imp1 = Imp.new
imp1.hp = rand(100)
imp1.defense = 50
imp1.atk = rand(100)

hero1 = Hero.new
hero1.hp = rand(100)
hero1.defense = 100
hero1.atk = rand(100)

puts imp1.hp
puts hero1.hp


#hp = rand(100)
#defense = 100

#if hp < 30
#  puts "Your health is #{hp}.  You are in critial condition."
#end
#if hp == 0
#  puts "Your health is at zero.  You are now dead."
#end

#puts "The imp attacts."

