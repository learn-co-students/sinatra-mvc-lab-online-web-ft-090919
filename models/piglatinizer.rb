class PigLatinizer
  attr_reader :words

def piglatinize(words)
  a = words.split(" ")
  b = a.map {|word| piglatinize_word(word)}
  b.join(" ")
end


def piglatin(word)
  if word[/\A[aeiou]/i]
    word + 'ay'
  else
    word[1..-1] + word[0] + 'ay'
  end
end
end
