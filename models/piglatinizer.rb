class PigLatinizer

  def consonant?(char)
    !char.match(/[aAeEiIoOuU]/)
  end

  def translate_word(word)

    if !consonant?(word[0])
      word += "w"
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word = word[3..-1] + word[0..2]
    elsif consonant?(word[0]) && consonant?(word[1])
      word = word[2..-1] + word[0..1]
    else
      word = word[1..-1] + word[0]
    end

    word + "ay"
  end

  def translate_sentence(sentence)
    sentence.split(" ").collect { |word| translate_word(word)}.join(" ")
  end
end
