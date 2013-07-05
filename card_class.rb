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
    @deck = populate_deck
  end

  def populate_deck
    CSV.foreach(@game_name) do |term,definition|
      Card.new({:term => term, :definition => definition})
    end
  end

  def shuffle_deck
  end

  def all_terms_guessed
    # all of the cards have been guessed correctly
    deck.empty?
  end

  def compare_answer
  end

  def current_definition
  end

  def current_term
  end

  def card_guessed_incorrectly
    # current card put to the back of the array, updates
    # current_term and current_definition to the next card
    # in the array
  end

  def card_guessed_correctly
    # current card taken out of array, updates current_term and
    # current_definition to next card in array.
  end
end
