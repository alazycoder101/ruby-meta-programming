require "money"
bargain_price = Money.from_numeric(99, "USD")
bargain_price.format

standard_price = 100.to_money("USD")
standard_price.format

class Numberic
  def to_money(currency)
    Money.from_numeric(self, currency || Money.default_currency)
  end
end