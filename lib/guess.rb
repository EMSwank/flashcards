class Guess

  attr_reader :response, :card

    def initialize(response, card)
      @response = response
      @card = card
    end

    def correct?
      if response == card.answer
        return true
      else
        return false
      end
    end

    def feedback
      if response == card.answer
        return "Correct!"
      else
        return "Incorrect!"
      end
    end
end
