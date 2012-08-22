def game
  imp_hp = 100
  imp_attack = 10
  imp_defense = 0.10
  herohp = 100
  hero_attack = 25
  hero_defense = 0.15
  
  puts "an imp is approaching"
  puts "will you fight or run?"
  while imp_hp != 0
    
    command = gets.chomp
    
    if command == 'fight'
       damage = hero_attack - imp_defense
       imp_hp = imp_hp - damage
       puts "The hero attacks!"  
       puts "The blow causes #{damage} damage." 
       puts "The imp now has #{imp_hp}."
       if comman == 'run'
         puts 'Coward!'
       else
         puts 'Please input "fight" or "run".'
         comman = gets.chomp()
    end
    
    if imp_hp >= 0
      puts "The imp is still alive."
      puts "Will you fight or run?"
    else
         puts "You have vanquished the imp."
         break
       
    end
    
  end
end

puts game

