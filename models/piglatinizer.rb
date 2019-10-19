
class PigLatinizer

  # match consonants bcdfghjklmnpqrstvxz
  # match vowels aeiouy

  def initialize

  end

  # take in a string of words or single word doesnt make a difference, send each word to piglatinize_word then return the whole string
  def piglatinize(string)
    if string.include?(" ")
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

    end

    new_word
  end

end
