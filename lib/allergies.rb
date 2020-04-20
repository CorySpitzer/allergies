# allergen     score
# eggs         1
# peanuts      2
# shellfish    4
# strawberries 8
# tomatoes     16
# chocolate    32
# pollen       64
# cats         128

class Score
    attr_reader :number

    def initialize number
        @number = number
    end

    def names
        []
    end
end