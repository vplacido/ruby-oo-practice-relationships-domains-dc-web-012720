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

    #! Above is individual methods
    #//                         
    #! Below is relationship methods

    # def guest
    # end

    # def trips
    # end

    
    # def trip_count
    # end

    # def self.all
    # end

    # def self.find_all_by_city
    # end

    # def self.most_popular
    # end


end