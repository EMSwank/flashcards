require 'minitest/autorun'
require 'minitest/pride'
require './lib/card_converter'

class CardConverterTest < Minitest::Test

  def test_it_exists
    card = CardConverter.new("../cards.txt)

    assert_instance_of CardConverter, card
  end

end
