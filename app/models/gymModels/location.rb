class Location

    attr_reader :client, :trainer, :location

    @@all = []

    def initialize(client_instance, trainer_instance, location_string="Golds Gym")
        @client = client_instance
        @trainer = trainer_instance
        @location = location_string
        @@all << self
    end

    def self.all 
        @@all
    end

    def self.least_clients
        arr = Location.all.map{|id| id.location}
        arr.uniq.min_by{|location| arr.count(location)}
    end

end