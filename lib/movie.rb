require 'regular_price'
require 'new_release_price'
require 'childrens_price'

class Movie

  attr_reader :title
  attr_accessor :price_code, :price

  def initialize(title, price)
    @title = title
    @price = price
  end

end
