class Listing

    attr_reader :city
    @@all = []
    def initialize(city_string, address="not stated" ,comment="none")
        @city = city_string
        @address = address
        @comment = comment

        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_all_by_city(city_string)
        @@all.select{|listing| listing.city == city_string}
    end

    def self.most_popular
        arr = @@all.map{|listing|  listing.city }
        arr.uniq.max_by{ |city| arr.count( city ) }
    end
    #! Above is individual methods
    #//                         
    #! Below is relationship methods

    def guest
        self.trips.map{|trip| trip.guest}
    end

    def trips
        Trip.all.select{|trip| trip.listing == self}
    end

    
    def trip_count
        self.trips.length
    end

    

  


end