require 'pry'
class PigLatinizer

  def piglatinize(str)
    str.split(' ').map do |word|
      piglatinizeword(word)
    end.join(' ')
  end

  def piglatinizeword(word)
    vowels= ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    if vowels.include?(word[0])
      word + "way"
    elsif !vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2])
      letter = word.slice!(0,3)
      word + letter + "ay"
    elsif !vowels.include?(word[0]) && !vowels.include?(word[1])
      letter = word.slice!(0,2)
      word + letter + "ay"
    elsif !vowels.include?(word[0])
      letter = word.slice!(0,1)
      word + letter + "ay"

    end
  end
end
