module PhoneNumberTranslator
  # Translates a given word to a phone number.
  class PhoneNumber
    attr_reader :word

    def initialize(word)
      @word = word
    end

    def to_i
      to_letters.inject('') { |acc, elem| "#{acc}#{Matcher.new(elem)}" }.to_i
    end

    alias to_s word

    private

    def to_letters
      @letters ||= word.split('')
    end
  end
end
