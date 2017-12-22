require './lib/deck'
require './lib/guess'
require './lib/card'

class Round
  attr_reader :deck, :guesses, :number_correct, :current

  def initialize(deck)
    @deck = deck
    @guesses = []
    @number_correct = 0
    @current = 0
  end

  def current_card
    deck.cards[@current]
  end

  def record_guess(guess)
    @attempt = Guess.new(guess, current_card)
    guesses << @attempt
    return @attempt
  end

  def next_card
      if @attempt.correct?
        @number_correct += 1
      else !@attempt.correct?
        deck.cards[@current]
      end
      @current += 1
  end

  def percent_correct
    ((number_correct.to_f / guesses.count.to_f) * 100).round
  end

  def start
    puts "Welcome! You're playing with #{deck.card_count} cards."

    deck.cards.each do |card|
      puts "This is card number #{current + 1} out of #{deck.card_count}."
      puts "Question: #{card.question}"
      response = gets.chomp
      record_guess(response)
      puts guesses.last.feedback
      next_card
    end

    puts "****** Game over! ******"
    puts "You had #{number_correct} correct guesses out of #{deck.card_count}
          for a score of #{percent_correct}%."
  end


end
