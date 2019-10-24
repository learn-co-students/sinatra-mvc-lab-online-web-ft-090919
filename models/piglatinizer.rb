class PigLatinizer
    attr_accessor :text

    def initialize
        @text = text
    end

    def piglatinize(text)

        sentence = text.split
        latinized = sentence.map do |word|
            if word.start_with?(/([aeiou]|[AEIOU])/)
                word + "way"
            else
                beginning = word.slice!(/[aeiou].*/)
                beginning + word + "ay"
            end
        end
        latinized.join(" ")
    end
    

end