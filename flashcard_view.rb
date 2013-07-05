class DeckViewer

  def game_welcome_message
     puts "Welcome to the 'Spectacular RJD Flashcard game!"
  end

  def ask_deck_to_play
    puts "Enter the name of the deck you'd like to play. If you prefer to exit, enter \"exit\""
  end

  def display_deck_options(decks_arr)
    decks_arr.each do |deck|
      puts "#{deck}"
      # sleep(2.0)
    end
    puts "or type 'Exit' to Quit"
  end

  def deck_welcome_message(deck)
    puts "Welcome to #{deck.name}! To advance, enter the correct term for each definition."
    puts "Let's get ready to rumble!!!!"
  end

  def display_card_definition(card)
    puts ""
    puts "Definition: #{card.definition}"
  end

  def display_card_guessed_correctly
    puts "Correct!"
  end

  def display_card_guessed_incorrectly
    puts "Nope, got it wrong."
  end

  def display_all_cards_guessed
    puts "Congratulations, you've completed all the cards! Enter \"repeat\" to play this deck again or \"menu\" to return to the main menu:"
  end

  def display_exit_game_message
    puts "Exiting the flashcard program. Have a nice day!"
  end
end
