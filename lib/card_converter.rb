class CardConverter

attr_reader :cards

  def initialize(filename)
    @cards = []
    scan_file(filename)
  end

  def scan_file(filename)
    File.readlines filename do |entry|
      single_card = entry.chomp.split(",")
      cards << Card.new(card[0], card[1])
    end
  end

end
