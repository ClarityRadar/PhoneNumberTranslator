module PhoneNumberTranslator
  # Converts a single letter into an integer as per
  # the phone keyboard convention.
  class Matcher
    include Pattern

    attr_reader :letter

    def initialize(letter)
      @letter = letter.upcase
    end

    def to_i
      (2..9).detect { |code| pattern(code).cover?(letter) }
    end

    alias integer to_i

    def to_s
      integer.to_s
    end
  end
end
