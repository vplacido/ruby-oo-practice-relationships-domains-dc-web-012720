require_relative "../app/models/gymModels/client.rb"
require_relative "../app/models/gymModels/location.rb"
require_relative "../app/models/gymModels/trainer.rb"

client1 = Client.new('Joe')
client2 = Client.new('Hoe')
client3 = Client.new('Foe')
client4 = Client.new('Eoe', 'Bag')
client5 = Client.new('Lauren')

trainer1 = Trainer.new('Ben')
trainer2 = Trainer.new('Ten')
trainer3 = Trainer.new('Gen')
trainer4 = Trainer.new('Ren')
trainer5 = Trainer.new('Den')

location1 = Location.new(client1, trainer1, 'Gold')
location2 = Location.new(client2, trainer1, 'Gold')
location3 = Location.new(client3, trainer1, 'Gold')
location4 = Location.new(client4, trainer2, 'Gold')
location5 = Location.new(client5, trainer2, 'Gold')
location6 = Location.new(client2, trainer3, 'Fold')
location7 = Location.new(client2, trainer3, 'Fold')
location8 = Location.new(client4, trainer4, 'Eold')
location9 = Location.new(client5, trainer5, 'Lold')

# p Location.all.length
# client1.assign_trainer(trainer1)
# p Location.all.length

# p "Should return Eold"
# p Location.least_clients

# p "Should return Ben"
# p Trainer.most_clients

