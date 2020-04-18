require 'default_price'
class RegularPrice
  include DefaultPrice

  def charge(days_rented)
    result = 2
    result+= (days_rented)*1.5 if days_rented > 2
    return result
  end
end
