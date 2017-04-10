module PhoneNumberTranslator
  # Translates a given word to a phone number.
  class PhoneNumber
    def initialize(word)
      @word = word
    end

    def to_s
      word
    end

    def to_i
      to_numbers.inject('') { |acc, elem| acc + elem.to_s }.to_i
    end

    private

    attr_reader :word

    def to_numbers
      to_letters.map { |letter| Matcher.new(letter).to_s }
    end

    def to_letters
      @letters ||= word.split('')
    end
  end
end
