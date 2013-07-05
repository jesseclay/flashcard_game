require 'pathname'

puts "Welcome to the 'Spectacular RJD Flashcard game'!"
sleep(2.0)

games_to_play = []
Pathname("./game_files").each_child {|f| games_to_play << f.basename('.*')}

def print_games(games_to_play)
  games_to_play.each do |deck| 
    puts "#{counter}: #{deck}" 
    sleep(2.0)
  end
  "or type 'Exit' to Quit"
end

puts "You can choose from the following decks: "
sleep(2.0)
puts "#{print_games(games_to_play)}"
game_selected = gets.chomp.downcase



#new_flashcard_game = Flashcard.new(game_selected)
#
#
#puts "Welcome to #{new_flashcard_game.name}!  To play enter the right term for each definition."
#puts "Let's get ready to rumble!!!!  READY?"
#
#answer = gets.chomp.downcase
#
#if answer == 'yes' || answer == 'y'
#  until new_flashcard_game.all_terms_guessed
#    puts "Definition:"
#    puts #{}"#{new_flashcard_game.current_definition}"  
#    guess = gets guess.chomp
#    if guess == new_flashcard_game.current_term
#      new_flashcard_game.card_guessed_correctly
#    else
#      new_flashcard_game.card_guessed_incorrectly
#    end 
#  end
#else
#  puts "Alright...your loss our game is sweet."
#end
#
