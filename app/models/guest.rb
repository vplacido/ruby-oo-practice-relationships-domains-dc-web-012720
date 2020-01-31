class Guest
    attr_reader :name

    @@all = []
    def initialize(name_string)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    #! Above is individual methods
    #//                         
    #! Below is relationship methods

    # def listings
    # end
    # def trips
    # end
    # def trip_count
    # end

    # def self.pro_traveller
    # end

    # def self.find_all_by_name(name_string)
    # end
end