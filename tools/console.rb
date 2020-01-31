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

tommy = Guest.new('Tommy T')
charles = Guest.new('Charles C')
sarah = Guest.new('Sarah S')

# p Guest.all

Trip.new(seattle1, tommy)
Trip.new(seattle1, charles)
Trip.new(washington, sarah)
Trip.new(losangeles, tommy)

#p Trip.all
# p "testing if #guest and trups returns 2"

# p seattle.guest.length
# p seattle.trips.length

#testing if .find_all_by_city returns 3
#p Listing.find_all_by_city("Seattle").length

p Listing.most_popular

# binding.pry

