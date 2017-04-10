module PhoneNumberTranslator
  # Converts a single letter into an integer as per
  # the phone keyboard convention.
  class Matcher
    attr_reader :letter

    def initialize(letter)
      @letter = letter.upcase
    end

    def to_s
      pattern.each_with_index.inject(0) do |acc, (elem, position)|
        elem.cover?(letter) ? position + 2 : acc
      end
    end

    private

    def pattern
      [
        ('A'..'C'),
        ('D'..'F'),
        ('G'..'I'),
        ('J'..'L'),
        ('M'..'O'),
        ('P'..'S'),
        ('T'..'V'),
        ('W'..'Z')
      ]
    end
  end
end
