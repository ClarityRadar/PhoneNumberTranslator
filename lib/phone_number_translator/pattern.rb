module PhoneNumberTranslator
  module Pattern
    def pattern(code)
      [
        ('A'..'C'),
        ('D'..'F'),
        ('G'..'I'),
        ('J'..'L'),
        ('M'..'O'),
        ('P'..'S'),
        ('T'..'V'),
        ('W'..'Z')
      ][code - 2]
    end
  end
end
