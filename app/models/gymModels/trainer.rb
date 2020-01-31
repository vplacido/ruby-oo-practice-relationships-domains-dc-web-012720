class Trainer
    attr_reader :name, :last, :specialty

    @@all =[]
    def initialize(first_name_string, last_name_string = "banks", specialty_string = "general")
        @name = first_name_string
        @last = last_name_string
        @specialty = specialty_string
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_clients
        arr = Location.all.map{|location| location.trainer}
        arr.uniq.max_by{|trainer| arr.count(trainer)}
    end

end