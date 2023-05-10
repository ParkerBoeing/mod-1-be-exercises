class Turn
    attr_reader :card, :guess
    
    def initialize(card, guess)
        @card = card
        @guess = guess
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