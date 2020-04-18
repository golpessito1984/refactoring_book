require 'movie'

class Rental
  attr_accessor :days_rented, :movie

  def initialize(days_rented, movie)
    @days_rented, @movie = days_rented, movie
  end

  def charge
    this_amount = 0
    case @movie.price_code
      when Movie::REGULAR
        this_amount+= 2
        this_amount+= (@days_rented-2)*1.5 if @days_rented > 2
      when Movie::NEW_RELEASE
        this_amount+= @days_rented*3
      when Movie::CHILDRENS
        this_amount+= 1.5
        this_amount+= (@days_rented-3)*1.5 if @days_rented > 3
    end
    return this_amount
  end

  def frequent_renter_points
   (@movie.price_code == Movie::NEW_RELEASE && @days_rented > 1) ? 2 : 1
  end

end
