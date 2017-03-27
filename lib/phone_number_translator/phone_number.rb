module PhoneNumberTranslator
  # Translates a given word to a phone number.
  class PhoneNumber
    attr_reader :word, :matcher, :letters

    def initialize(word)
      @word = word
    end

    def to_s
      word
    end

    def to_i
      to_letters.inject('') { |acc, elem| acc + elem.to_s }.to_i
    end

    private

    def to_letters
      letters.map { |letter| matcher(letter.upcase) }
    end

    def letters
      @letters ||= word.split('')
    end

    def matcher(letter)
      case letter
      when 'A', 'B', 'C'      then 2
      when 'D', 'E', 'F'      then 3
      when 'G', 'H', 'I'      then 4
      when 'J', 'K', 'L'      then 5
      when 'M', 'N', 'O'      then 6
      when 'P', 'Q', 'R', 'S' then 7
      when 'T', 'U', 'V'      then 8
      when 'W', 'X', 'Y', 'Z' then 9
      end
    end
  end
end
