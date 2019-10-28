class PigLatinizer

    def piglatinize(text)
        words_arr = text.split(" ")
        words_arr.map do |w|
           word_arr = w.split(/(?<!\s)/)
           if word_arr.first.match(/[aeiouAEIOU]/)
            word_arr.join + "way"
           elsif word_arr.find {|c| c.match(/[aeiouAEIOU]/)} == nil
            word_arr.join + "ay"
           else
            first_cons = word_arr.take_while {|c| c.match(/[^aeiouAEIOU]/)}
            word_arr.join.reverse.chomp(first_cons.join.reverse).reverse + first_cons.join + "ay"
           end
        end.join(" ")
    end
end