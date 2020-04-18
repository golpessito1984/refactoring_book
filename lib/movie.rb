require 'regular_price'
require 'new_release_price'
require 'childrens_price'

class Movie

  REGULAR = 0
  NEW_RELEASE = 1
  CHILDRENS = 2

  attr_reader :title
  attr_accessor :price_code, :price
  attr_writer :price

  def price_code=(value)
    @price_code = value
    @price = case @price_code
    when REGULAR
       RegularPrice.new
    when NEW_RELEASE
       NewReleasePrice.new
    when CHILDRENS
       ChildrensPrice.new
    end

  end

  def initialize(title)
    @title = title
  end

end
