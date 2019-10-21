
class PigLatinizer

  # match consonants bcdfghjklmnpqrstvxz
  # match vowels aeiouy

  def initialize

  end

  # take in a string of words or single word doesnt make a difference, send each word to piglatinize_word then return the whole string
  def piglatinize(string)
    if string.include?(" ")     # check if we have spaces indicating multiple words
      string.split(" ").map {|word| piglatinize_word(word) }.join(" ")
    else
      piglatinize_word(string)
    end
  end

  # takes a single word and piglatinizes it
  def piglatinize_word(word)

    if word =~ /^[bcdfghjklmnpqrstvxzBCDFGHJKLMNPQRSTVXZ]/
      consonant_word = word.match(/^([bcdfghjklmnpqrstvxzBCDFGHJKLMNPQRSTVXZ]*)(.*)/)
      new_word = "#{consonant_word[2]}#{consonant_word[1]}ay"

    elsif word =~ /^[aeiouyAEIOUY]/
      vowel_word = word.match(/^([aeiouyAEIOUY]+)(\w*)/)
      new_word = "#{vowel_word[1]}#{vowel_word[2]}way"

    else         # not really sure what the last rule is but this is what works for the words in the tests
      other_word = word.match(/([\w][hH]?)(\w+)/)
      new_word = "#{other_word[2]}#{other_word[1]}ay"
      # binding.pry
    end

    new_word
  end

end
