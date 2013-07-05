require 'csv'

class Card 

  attr_reader :definition, :term 

  def initialize(args)
    @definition = args.fetch(:definition)
    @term = args.fetch(:term)
  end

end

class CardDeck
  attr_reader :name, :deck

  def initialize(args)
    @name = args.fetch(:deck_name)
    @deck = :card_array
    @current_card = @deck.shift
  end

  def shuffle_deck
    @deck.shuffle
  end

  def all_terms_guessed
    @deck.empty? && @current_card == nil
  end

  def correct_answer(guess)
    guess == @current_card.term
  end

  def current_definition
    @current_card.definition
  end

  def current_term
    @current_card.term
  end

  def card_guessed_incorrectly
    @deck << @current_card
    @current_card = @deck.shift
  end

  def card_guessed_correctly
    @current_card = @deck.shift
  end
end

