require('rspec')
require('place')

describe(Place) do
  describe("#location") do
    it("lets you enter places you visit") do
      test_place = Place.new("Maine")
      expect(test_place.location()).to(eq("Maine"))
    end
  end
  
end
