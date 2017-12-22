require './lib/card'
require './lib/guess'
require './lib/deck'
require './lib/round'
require './lib/card_converter'

card_1 = Card.new("What is the capital of Alaska?", "Juneau")
card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
deck = Deck.new([card_1, card_2])
round = Round.new(deck)


# cards = CardConverter.new("./cards.text").cards
# deck = Deck.new(cards)
# round = Round.new(deck)

round.start
