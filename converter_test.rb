require 'minitest/autorun'
require 'minitest/pride'
require './converter'

class CurrencyConverterTest < MiniTest::Test

  ######################## can't test initialize method???
  # def test_initialize
  #   assert_equal true, CurrencyConverter.new(15,:dollar)
  #   refute_equal true, CurrencyConverter.new(15,:rubles)
  # end

  attr_reader :fifteen_bucks
  @@fifteen_bucks = CurrencyConverter.new(15,:dollar)

  def test_euros
    assert_in_delta 11.85, @@fifteen_bucks.euros, 0.01
  end

  def test_yen
    assert_equal 1627.2, @@fifteen_bucks.yen
  end

  def test_pounds
    assert_equal 9.3, @@fifteen_bucks.pounds
  end

  def test_ounces_gold
    assert_equal 0.0123, @@fifteen_bucks.ounces_gold
  end

end
