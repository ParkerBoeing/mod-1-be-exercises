class Turn
    attr_reader :card, :guess
    
    def initialize(guess, card)
        @guess = guess
        @card = card
    end

    def correct?
        @guess == @card.answer
    end
    
    def feedback
        if correct? == true
            p "You're correct!"
        else
            p "Incorrect."
        end
    end

end