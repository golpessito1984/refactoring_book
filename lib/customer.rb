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
      this_amount = amount_for(rental)
      frequent_renter_points = frequent_renter_points(rental, frequent_renter_points)

      result+= "\t" + rental.movie.title + "\t" + this_amount.to_s + "\n"
      total_amount+=this_amount
    end
    result+= "Amount owed is #{total_amount}\n"
    result+= "Your earned #{frequent_renter_points} frequent renter points"
  end

  def amount_for(rental)
    this_amount = 0
    case rental.movie.price_code
      when Movie::REGULAR
        this_amount+= 2
        this_amount+= (rental.days_rented-2)*1.5 if rental.days_rented > 2
      when Movie::NEW_RELEASE
        this_amount+= rental.days_rented*3
      when Movie::CHILDRENS
        this_amount+= 1.5
        this_amount+= (rental.days_rented-3)*1.5 if rental.days_rented > 3
    end
    return this_amount
  end

  def frequent_renter_points(rental, my_points)
    frequent_renter_points = my_points + 1

    if rental.movie.price_code == Movie::NEW_RELEASE && rental.days_rented > 1
      frequent_renter_points+=1
    end
    return frequent_renter_points
  end

end
