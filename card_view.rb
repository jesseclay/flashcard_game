new_flashcard_game = Flashcard.new


puts "Welcome to #{new_flashcard_game.name}!  To play enter the right term for each definition."
puts "Let's get ready to rumble!!!!  READY?"

answer = gets.chomp.downcase

if answer == 'yes' || answer == 'y'
  until new_flashcard_game.all_terms_guessed
    puts "Definition:"
    puts #{}"#{new_flashcard_game.current_definition}"  
    guess = gets guess.chomp
    if guess == new_flashcard_game.current_term
      new_flashcard_game.card_guessed_correctly
    else
      new_flashcard_game.card_guessed_incorrectly
    end 
  end
else
  puts "Alright...your loss our game is sweet."
end
