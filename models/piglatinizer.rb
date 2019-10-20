class PigLatinizer


    def piglatinize(string)
        string = string.split(' ')
        piglatinized_string = []
        string.each do |word|
            if word[0].match(/[aeiouAEIOU]/)
                piglatinized_string << word + "way"
            elsif word[0..2].match(/[splrtSPLRT]{3}/)
                piglatinized_string << word[3..-1] + word[0..2] + "ay"
            elsif word[1].match(/[hkltrHKLTR]/)
                piglatinized_string << word[2..-1] + word[0..1] + "ay"
            else
                piglatinized_string << word[1..-1] + word[0] + "ay"
            end
        end
        piglatinized_string.join(" ")
    end
end