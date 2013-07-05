require 'csv'

class Card 

  attr_reader :definition, :term 

  def initialize(args)
    @definition = args.fetch(:definition)
    @term = args.fetch(:term)
  end

end

class CardDeck
  attr_accessor :name

  def initialize(args)
    @game_name = args.fetch(:deck_name)
    @deck = []
    @current_card = nil
    populate_deck
  end

  def populate_deck
    CSV.foreach(@game_name) do |term,definition|
      @deck << Card.new({:term => term, :definition => definition})
    end
    @current_card = @deck.shift
  end

  def shuffle_deck
    @deck.shuffle
  end

  def all_terms_guessed
    @deck.empty?
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
  end

  def card_guessed_correctly
    @current_card = @deck.shift
  end
end
