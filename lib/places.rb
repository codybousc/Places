class Place

    @@all = []

    define_method(:initialize) do |place_name|
        @place_name = place_name
    end


    define_method(:place_name) do
        @place_name
    end

    define_singleton_method(:all) do
        @@all
    end

    define_singleton_method(:clear) do
        @@all = []
    end

    define_method(:save) do
        @@all.push(self)
    end
end
