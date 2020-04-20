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
    attr_reader :number, :allergies

    def initialize number
        @number = number
        @allergies = []
        @dictionary = {1 => 'eggs',
                       2 => 'peanuts',
                       4 => 'shellfish',
                       8 => 'strawberries',
                       16 => 'tomatoes'}
    end

    def names
        # Start out with 2^4
        countdown = 4
        key = 1
        while key >= 1
            key = 2 ** countdown
            if @number >= key
                @allergies << @dictionary[key]
                @number -= key
            end
            countdown -= 1
        end
        @allergies
    end
end
