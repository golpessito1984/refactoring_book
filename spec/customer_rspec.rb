require 'customer'

RSpec.describe Customer, "#basic customer" do
    context "with rentals" do
      it "get customer's name" do
        customer = Customer.new("David Ruiz")
        expect(customer.name).to eq("David Ruiz")
      end

      it "get rentals" do

        movie1, movie2 = Movie.new("Terminator", Movie::REGULAR),
                         Movie.new("Robocop", Movie::REGULAR)

        rental1, rental2 = Rental.new(2, movie1),
                           Rental.new(3, movie2)

        customer = Customer.new("David Ruiz")

        customer.add_rentals(rental1)
        customer.add_rentals(rental2)

        expect(customer.rentals).to contain_exactly(rental1, rental2)
      end
    end

    describe "statement with rentals" do

      before(:each) do
        movie1, movie2 = Movie.new("Terminator", Movie::REGULAR),
                         Movie.new("Robocop", Movie::NEW_RELEASE)

        rental1, rental2 = Rental.new(2, movie1),
                           Rental.new(3, movie2)

        @customer = Customer.new("David Ruiz")

        @customer.add_rentals(rental1)
        @customer.add_rentals(rental2)

        @statement_text = %Q(Rental Record for David Ruiz
\tTerminator\t2
\tRobocop\t9
Amount owed is 11
Your earned 3 frequent renter points)
      end

      it "get correct statement" do
        expect(@customer.statement).to match(@statement_text)
      end
    end
end
