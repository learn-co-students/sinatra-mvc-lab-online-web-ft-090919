class PigLatinizer
  attr_reader :words

  def initialize
    @words = words
  end

  def take_initial_consonants
  cons = text.scan(/[bcdfghjklmnpqrstvwxyz]/) do
      case PigLatinizer
      when cons == true
        cons.drop
      end
    end

  end

end
