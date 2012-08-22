class Character
  attr_accessor :name
  
  def intialize
    @character = []
  end
  
  def get_name
    @name = name
  puts 'Please select a name for your character.'
  @name = gets.chomp()
    
  while @name == ''
    puts 'Please choose your characters name.'
    @name = gets.chomp()
    if @name != ''
    @character.push(@name)
      puts "Your characters name is #{@name}"
    end
  end
end
            
end




a = Character.new
a.get_name