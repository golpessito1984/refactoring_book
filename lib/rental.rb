require 'movie'

class Rental
  attr_accessor :days_rented, :movie

  def initialize(days_rented, movie)
    @days_rented, @movie = days_rented, movie
  end

  def charge
    @movie.price.charge(@days_rented)
  end

  def frequent_renter_points
   @movie.price.frequent_renter_points(@days_rented)
  end

end
