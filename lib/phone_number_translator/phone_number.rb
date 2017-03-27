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
      numberize = matcher_helper.map.with_index do |range, number|
        range.cover?(letter) ? number + 2 : 0
      end

      numberize.inject(:+)
    end

    def matcher_helper
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
