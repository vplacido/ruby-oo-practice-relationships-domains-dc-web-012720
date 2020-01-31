class Guest
    attr_reader :name

    @@all = []
    def initialize(first_name_string, last_name_string='smith')
        @name = first_name_string
        @last = last_name_string

        @@all << self
    end

    def self.all
        @@all
    end

    #! Above is individual methods
    #//                         
    #! Below is relationship methods

    def listings
        self.trips.map{|trip| trip.listing}
    end

    def trips
        Trip.all.select{|trip| trip.guest == self}
    end

    def trip_count
        self.trips.length
    end

    def self.pro_traveller
        ans = []
        Guest.all.each{|guest| 
            if guest.trip_count >= 2
                ans.push(guest)
            end
        }
        ans
    end

    def self.find_all_by_name(first_name_string)
        Guest.all.select{|guest| guest.name == first_name_string}
    end
end