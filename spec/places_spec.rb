require('rspec')
require('places')
require('pry')

describe(Place) do

    describe("#place_name") do
        it ("lets you name a destination that you've been") do
            test_place = Place.new("London")
            expect(test_place.place_name()).to(eq("London"))
        end
    end
    
end
