require('rspec')
require('places')
require('pry')

describe(Place) do
    before() do
        Place.clear
    end

    describe("#place_name") do
        it ("lets you name a destination that you've been") do
            test_place = Place.new("London")
            expect(test_place.place_name()).to(eq("London"))
        end
    end

    describe(".all") do
        it("list all places") do
            expect(Place.all()).to(eq([]))
        end
    end

    describe('#save') do
        it("pushes a place into the array of places") do
            new_place = Place.new("tokyo")
            new_place.save()
            expect(Place.all()).to(eq([new_place]))
        end
    end

    describe(".clear") do
        it("empties out all of the saved places") do
            Place.new("London").save()
            Place.clear()
            expect(Place.all()).to(eq([]))
        end
    end
end
