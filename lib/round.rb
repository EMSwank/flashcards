require './lib/deck'
require './lib/guess'
require 'pry'

class Round

  attr_reader :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    deck.cards[0]
  end

  def record_guess(guess)
    attempt = Guess.new(guess, current_card)
    guesses << attempt
    return attempt
  end


end
