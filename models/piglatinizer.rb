class PigLatinizer 
  
  def initialize
  
  end

  def piglatinize(string)
    string = string.split(' ')
    piglatinized_string = []
    string.each do |w|
        if w[0].match(/[aeiouAEIOU]/)
            piglatinized_string << w + "way"
        elsif w[0..2].match(/[splrtSPLRT]{3}/)
            piglatinized_string << w[3..-1] + w[0..2] + "ay"
        elsif w[1].match(/[hkltrHKLTR]/)
            piglatinized_string << w[2..-1] + w[0..1] + "ay"
        else
            piglatinized_string << w[1..-1] + w[0] + "ay"
        end
    end
    piglatinized_string.join(" ")
  end
end