require 'movie'

RSpec.describe Movie, "#price_code" do
  context "with REGULAR, CHILDRENS, NEW_RELEASE" do
    it "get title when create a Movie" do
      movie = Movie.new("The witcher", RegularPrice.new)
      expect(movie.title).to eq("The witcher")
    end

    it "set code_price to REGULAR" do
      movie = Movie.new("The Witcher", RegularPrice.new)
      expect(movie.price.class).to eq(RegularPrice.new.class)
    end

    it "set code_price to NEW_RELEASE" do
      movie = Movie.new("Avengers", NewReleasePrice.new)
      expect(movie.price.class).to eq(NewReleasePrice.new.class)
    end

    it "set code_price to CHILDRENS" do
      movie = Movie.new("Dumbo", ChildrensPrice.new)
      expect(movie.price.class).to eq(ChildrensPrice.new.class)
    end

  end
end
