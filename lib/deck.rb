class Deck

attr_reader :cards

  def initialize(cards)
    @cards = cards

  end

  def card_count
    cards.count
  end
end
