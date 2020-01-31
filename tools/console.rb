require 'pry'
# require_relative '../config/environment.rb'

# def reload
#   load 'config/environment.rb'
# end

require_relative '../app/models/trip.rb'
require_relative '../app/models/guest.rb'
require_relative '../app/models/listing.rb'

seattle = Listing.new('Seattle')
washington = Listing.new('Washington DC')
losangeles = Listing.new('Los Angeles')

# p Listing.all

tommy = Guest.new('Tommy T')
charles = Guest.new('Charles C')
sarah = Guest.new('Sarah S')

# p Guest.all

Trip.new(seattle, tommy)
Trip.new(seattle, charles)
Trip.new(washington, sarah)
Trip.new(losangeles, tommy)

p Trip.all




# binding.pry

