

class CurrencyConverter
  attr_accessor :rates, :dollars
  @@rates = {
    :euro => 0.79,
    :yen => 108.48,
    :pounds => 0.62,
    :gold => 0.00082
  }
  def initialize(how_many, from_what)
    if from_what == :dollar
      @dollars = how_many
    else
      puts "This class is only for dollars, buddy. Try again."
    end
  end

  def euros
    @dollars * @@rates[:euro]
  end

  def yen
    @dollars * @@rates[:yen]
  end

  def pounds
    @dollars * @@rates[:pounds]
  end

  def ounces_gold
    @dollars * @@rates[:gold]
  end

end

fifteen_bucks = CurrencyConverter.new(15, :dollar)
p fifteen_bucks.euros
p fifteen_bucks.yen
p fifteen_bucks.pounds
p fifteen_bucks.ounces_gold

p fifteen_rubles = CurrencyConverter.new(15, :rubles)




# Day 13 Assignment
# Use MiniTest to create a Currency and CurrencyConverter class.
#
# I should be able to take 15 dollars, and convert to number of Euros, Yen, Pounds, and Gold.
# The conversion rates can be found googling google like 1 dollar in euro
# Create using test driven design
# Red, Green, Refactor
#
# Red: watch it break | write a failing test
# Green: Make it work | make the test pass
# Refactor: Make it better | make code better. Stay Green. make test better. Stay Green.
# Example usage
#
# CurrencyConverter.new(15, :dollar => :euro)
# => 11.82 Euro
