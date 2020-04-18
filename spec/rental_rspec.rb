require 'movie'
require 'rental'

RSpec.describe Rental, "#days_rented and movie" do
  it "get days_rented and movie when I rented a movie" do
    movie = Movie.new("Spiderman", Movie::NEW_RELEASE)
    rental = Rental.new(3, movie)
    expect(rental.days_rented).to eq(3)
    expect(rental.movie).to eq(movie)
  end
end
