require('rspec')
require('place')


describe(Place) do
  before() do
    Place.clear
  end


  describe("#location") do
    it("lets you enter places you visit") do
      test_place = Place.new("Maine")
      expect(test_place.location()).to(eq("Maine"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Place.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a place to the array of saved places") do
      test_place = Place.new("Maryland")
      test_place.save()
      expect(Place.all()).to(eq([test_place]))
    end
  end

  describe(".clear") do
    it("empties out all the saved locations") do
    Place.new("Maryland").save()
    Place.clear()
    expect(Place.all()).to(eq([]))
  end
 end
end
