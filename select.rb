puts 'Please choose "warrior" or "mage".'
choice = gets.chomp

if choice == 'warrior'
  hp = rand(30..50)
  defense = rand(20..50)
  attack = rand(35..50)
elsif choice == 'mage'
  hp = rand(10..20)
  defense = rand(10..20)
  attack = rand(5..10)
end


puts "hp = #{hp}"
puts "defense = #{defense}"
puts "attack = #{attack}"