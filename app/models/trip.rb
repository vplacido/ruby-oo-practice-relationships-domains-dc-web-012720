class Trip

    attr_accessor :listing, :guest

    @@all = []

    def initialize(listing_instance, guest_instance, date_string='none')
        @listing = listing_instance
        @guest = guest_instance
        @date = date_string

    
        @@all << self
    end

    def self.all
        @@all
    end

    #! Above is individual methods
    #//                         
    #! Below is relationship methods

    # def listing
    # end
    # def guest
    # end



end
