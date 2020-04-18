require 'movie'
require 'rental'

class Customer
  attr_accessor :name, :rentals

  def initialize(name)
    @name = name
    @rentals = []
  end

  def add_rentals(rental)
    @rentals << rental
  end

  def statement
    total_amount, frequent_renter_points = 0, 0
    result = "Rental Record for #{@name}\n"

    @rentals.each do |rental|
      this_amount = rental.charge
      frequent_renter_points += rental.frequent_renter_points

      result+= "\t" + rental.movie.title + "\t" + this_amount.to_s + "\n"
      total_amount+=this_amount
    end
    result+= "Amount owed is #{total_amount}\n"
    result+= "Your earned #{frequent_renter_points} frequent renter points"
  end

end
