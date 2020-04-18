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
    frequent_renter_points = 0
    result = "Rental Record for #{@name}\n"

    @rentals.each do |rental|
      this_amount = rental.charge
      frequent_renter_points += rental.frequent_renter_points

      result+= "\t" + rental.movie.title + "\t" + this_amount.to_s + "\n"
    end
    result+= "Amount owed is #{total_amount}\n"
    result+= "Your earned #{frequent_renter_points} frequent renter points"
  end

  def total_amount
    @rentals.inject(0) do |sum, rental|
      sum + rental.charge
    end
  end

end
