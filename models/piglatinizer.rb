class PigLatinizer
  def piglatinize(text)
    text.split.map do |word|
      word_parts = word.scan(/(^[^aeiou]+)(.*)/i)
      if word_parts.size > 0
        word_parts.first[1] + word_parts.first[0] + "ay"
      else
        word + "way"
      end
    end.join(" ")
  end
end
