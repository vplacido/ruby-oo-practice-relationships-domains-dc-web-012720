class Client
    attr_reader :name, :last, :age

    @@all =[]
    def initialize(first_name_string, last_name_string = "week", age_int = 25)
        @name = first_name_string
        @last = last_name_string
        @age = age_int
        @@all << self
    end

    def self.all
        @@all
    end

    def assign_trainer(trainer_instance, location_string)
        Location.new(self, trainer_instance, location_string)
    end
end