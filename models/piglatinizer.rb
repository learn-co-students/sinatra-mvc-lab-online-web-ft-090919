class PigLatinizer

    def initialize
    end

    def piglatinize(str)
        str_arr = str.split(" ")
        str_arr.map { |word| latin(word) }.join(" ")
    end

    def latin(word)
        result = ""
        vowels = "aeiou"

        if vowels.include?(word[0].downcase)
            result = word + "way"
        else
            word.each_char.with_index do |char, idx|
                if vowels.include?(char.downcase)
                    result = word[idx..-1] + word[0...idx] + "ay"
                    break
                else
                    next
                end
            end
        end

        result

    end

end