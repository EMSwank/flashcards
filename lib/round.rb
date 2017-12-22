require './lib/deck'
require './lib/guess'
require 'pry'

class Round
  attr_reader :deck, :guesses, :number_correct, :current

  def initialize(deck)
    @deck = deck
    @guesses = []
    @number_correct = 0
    @current = 0
  end

  def current_card
    @deck.cards[current]
  end

  def record_guess(guess)
    @attempt = Guess.new(guess, current_card)
    guesses << @attempt
    return @attempt
  end

  def number_correct
      if @attempt.correct?
        @number_correct += 1
      else !@attempt.correct?
        deck.cards.push(deck.cards[@current])
      end
      @current += 1
  end

  def percent_correct
    ((number_correct.to_f / guesses.count.to_f) * 100).round
  end
end
