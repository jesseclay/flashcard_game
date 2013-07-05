class DeckViewer
  initialize(deck)
  @deck = deck
  end

  def game_welcome_message
     puts "Welcome to the 'Spectacular RJD Flashcard game'!"
  end

  def ask_deck_to_play
    puts "Enter the number of the deck you'd like to play. If you prefer to exit, enter \"exit\""
  end

  def display_deck_options
    puts #All of the different options(Gameoptions Array)
  end

  def deck_welcome_message
    puts "Welcome to #{deck.name}! To play enter the right term for each definition."
    puts "Let's get ready to rumble!!!! READY?"
  end

  def display_card_definition(card)
    puts "Definition: #{card.current_definition}"
  end

  def display_card_guessed_correctly
    puts "Correct!"
  end

  def display_card_guessed_incorrectly
    puts "Nope, got it wrong"
  end

  def display_all_cards_guessed
    puts "Congratulations, you've completed all the cards! Enter \"repeat\" to play this deck again or \"menu\" to return to the main menu:"
  end

  def display_exit_game_message
    puts "Exiting the flashcard program. Have a nice day!"
  end
end
