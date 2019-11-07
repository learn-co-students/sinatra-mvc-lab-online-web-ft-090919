
class PigLatinizer

  @@vowel = ['a', 'e', 'i', 'o', 'u']
  
  def initialize
  end

  def piglatinize(text)
    @array = text.split(" ")
    output = []
    @array.each do  |str|
      str_chars = str.chars

      if @@vowel.include?(str_chars.first.downcase)
        output << str + "way"

      else
        constants = ""

        str_chars.each do |char|
          break if @@vowel.include?(char)
          constants += char
        end

        output << str.delete_prefix(constants) + constants + "ay"
      end
    end
    output.join(" ")
  end
end

test = PigLatinizer.new
test.piglatinize("I")