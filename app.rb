require('sinatra')
require('sinatra/reloader')
require('./lib/places')
also_reload('./lib/**/*.rb')

get('/') do
    @places = Place.all()
    erb(:index)
end

post('/places') do
    place_name = params.fetch('place_name')
    place = Place.new(place_name)
    place.save()
    erb(:success)
end
