require 'movie'

class Rental
  attr_accessor :days_rented, :movie

  def initialize(days_rented, movie)
    @days_rented, @movie = days_rented, movie
  end
end
