
#puts "Welcome to the 'Spectacular RJD Flashcard game'!"
#puts "Which one would you like to play?"
#puts #All of the different options(Gameoptions Array)
#game_selected = gets.chomp.downcase
#
# new_flashcard_game = Flashcard.new(game_selected)
require_relative 'card_class'
require_relative 'flashcard_view'

module DeckPopulator(csv_file)
  def populate_deck
    array_of_cards = []
    CSV.foreach(csv_file) do |term,definition|
      array_of_cards << Card.new({:term => term, :definition => definition})
    end
    array_of_cards
  end

end


view = DeckViewer.new

deck.deck_welcome_message

deck_selection = nil
until deck_selection == "exit"
  deck.ask_deck_to_play
  #list all decks with numbers
  deck_selection = gets.chomp.to_i
  csv_file = #run method to get csv file name

  deck = CardDeck.new({:deck_name => csv_file, :card_array => DeckPopulator(csv_file)})
  
  
  repeat_deck_answer = nil
  until repeat_deck_answer == "menu"
    until deck.all_terms_guessed
      view.display_card_definition(deck.current_card)
      guess = gets.chomp
      if guess == deck.current_term
        deck.card_guessed_correctly
        view.display_card_guessed_correctly
      else
        deck.card_guessed_incorrectly
        view.display_card_guessed_incorrectly
      end 
    end
    view.display_all_cards_guessed
    repeat_deck_answer = gets.chomp
  end
end
view.display_exit_game_message
