module PhoneNumberTranslator
  module Pattern
    def pattern(code)
      {
        2 => ('A'..'C'),
        3 => ('D'..'F'),
        4 => ('G'..'I'),
        5 => ('J'..'L'),
        6 => ('M'..'O'),
        7 => ('P'..'S'),
        8 => ('T'..'V'),
        9 => ('W'..'Z')
      }[code]
    end
  end
end
