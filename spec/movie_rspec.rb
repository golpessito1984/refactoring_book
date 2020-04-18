require 'movie'

RSpec.describe Movie, "#price_code" do
  context "with REGULAR, CHILDRENS, NEW_RELEASE" do
    it "get title when create a Movie" do
      movie = Movie.new("The witcher")
      expect(movie.title).to eq("The witcher")
    end

    it "set code_price to REGULAR" do
      movie = Movie.new("The Witcher")
      movie.price_code = Movie::REGULAR
      expect(movie.price_code).to eq(0)
    end

    it "set code_price to NEW_RELEASE" do
      movie = Movie.new("Avengers")
      movie.price_code = Movie::NEW_RELEASE
      expect(movie.price_code).to eq(1)
    end

    it "set code_price to CHILDRENS" do
      movie = Movie.new("Dumbo")
      movie.price_code = Movie::CHILDRENS
      expect(movie.price_code).to eq(2)
    end

  end
end
