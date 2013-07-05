new_flashcard_game = Flashcard.new


puts "Welcome to #{new_flashcard_game.name}!  To play enter the right term for each definition."
puts "Let's get ready to rumble!!!!  READY?"

answer = gets.chomp.downcase

if answer == 'yes' || answer == 'y'
  while.(new_flashcard_game.(arrayname).any?)
    #GET definition and term from card
    puts "Definition:"
    puts #{}"#{(array.definition)}"  
    guess = gets guess.chomp 
    if guess == #term
      #REMOVE card from deck and end loop
    else
      #REMOVE card from deck and end loop
    end 
  end
else
  puts "Alright...your loss our game is sweet."
end
