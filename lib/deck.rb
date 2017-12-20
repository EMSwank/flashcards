require './lib/card'

class Deck

attr_reader :new_card

  def initialize(new_card)

    @new_card = new_card

  end

  def cards
    new_card
  end

  def count
    new_card.count
  end
end
