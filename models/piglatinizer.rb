class PigLatinizer
    
    def piglatinize(str)
        str = str.split(' ')
        piglatinized_str = []
        str.each do |word|
            if word[0].match(/[aeiouAEIOU]/)
                piglatinized_str << word + "way"
            elsif word[0..2].match(/[splrtSPLRT]{3}/)
                piglatinized_str << word[3..-1] + word[0..2] + "ay"
            elsif word[1].match(/[hkltrHKLTR]/)
                piglatinized_str << word[2..-1] + word[0..1] + "ay"
            else
                piglatinized_str << word[1..-1] + word[0] + "ay"
            end
        end
        piglatinized_str.join(" ")
    end

end