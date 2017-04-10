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
      to_letters.inject('') { |acc, elem| acc + elem.to_s }.to_i
    end

    private

    attr_reader :word, :matcher, :letters

    def to_letters
      letters.map { |letter| matcher(letter.upcase) }
    end

    def letters
      @letters ||= word.split('')
    end

    def matcher(letter)
      pattern.each_with_index.inject(0) do |acc, (elem, position)|
        elem.cover?(letter) ? position + 2 : acc
      end
    end

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
