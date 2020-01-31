class Trip

    attr_reader :listing, :guest

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
end
