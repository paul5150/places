require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/place")

get("/") do
  @places = Place.all()
  erb(:index)
end

post("/places") do
  location = params.fetch("location")
  place = Place.new(location)
  place.save()
  erb(:yay)
end
