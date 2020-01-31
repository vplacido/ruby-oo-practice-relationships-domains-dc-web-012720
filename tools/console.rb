require 'pry'
# require_relative '../config/environment.rb'

# def reload
#   load 'config/environment.rb'
# end

require_relative '../app/models/trip.rb'
require_relative '../app/models/guest.rb'
require_relative '../app/models/listing.rb'

seattle1 = Listing.new('Seattle', "k st")
seattle2 = Listing.new('Seattle', "h st")
seattle3= Listing.new('Seattle', "S st")
washington = Listing.new('Washington DC')
losangeles = Listing.new('Los Angeles')

# p Listing.all

tommy = Guest.new('Tommy', 'T')
charles = Guest.new('Charles', 'C')
sarah = Guest.new('Sarah', 'A' )
sarah2 = Guest.new('Sarah', 'B')

# p Guest.all

one = Trip.new(seattle1, tommy)
two = Trip.new(seattle1, charles)
three = Trip.new(washington, sarah)
four = Trip.new(losangeles, tommy)
five = Trip.new(seattle2, charles)

#p Trip.all

#! Listing methods
# p "testing if #guest and trups returns 2"
# p seattle.guest.length
# p seattle.trips.length

# p "testing if .find_all_by_city returns 3"
# p Listing.find_all_by_city("Seattle").length

# p "Should return Seattle"
# p Listing.most_popular

#! Guest methods
# p "Should return 2"
# p tommy.listings.length
# p tommy.trips.length

# p "Should return [charles, tommy]"
# p sarah.trip_count
# p Guest.all
# p Guest.pro_traveller

# p "Should return 2 Sarahs with different last name"
# p Guest.find_all_by_name('Sarah')

#testing the Trip .listing and .guest methods
# p one.listing
# p one.guest






# binding.pry

