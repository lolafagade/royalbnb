puts 'clearing data'
Booking.destroy_all
Castle.destroy_all
User.destroy_all


puts 'creating users'
jasmine = User.create!(name: 'Jasmine', email: "jasmine@agrabah.com", password: "jasmine!", avatar: File.open(Rails.root.join('db/fixtures/princesses/jasmine_avatar.jpg')))
elsa = User.create!(name: 'Elsa', email: "elsa@corona-castle.com", password: "elsa!!", avatar: File.open(Rails.root.join('db/fixtures/princesses/elsa_avatar.jpg')))
ariel = User.create!(name: 'Ariel', email: "ariel@under-water.com", password: "ariel!", avatar: File.open(Rails.root.join('db/fixtures/princesses/ariel_avatar.jpg')))
snowwhite = User.create!(name: 'Snow white', email: "snowwhite@forest.com", password: "snowwhite!", avatar: File.open(Rails.root.join('db/fixtures/princesses/snowwhite.jpg')))
belle = User.create!(name: 'Belle', email: "belle@huge-castle.com", password: "belle!", avatar: File.open(Rails.root.join('db/fixtures/princesses/belle_avatar.jpg')))
cinderella = User.create!(name: 'Cinderella', email: "cinderella@cinderella-castle.com", password: 'cinderella!', avatar: File.open(Rails.root.join('db/fixtures/princesses/cinderella.jpg')))
mulan = User.create!(name: 'Mulan', email: 'mulan@ancient-china.com', password: 'mulan!', avatar: File.open(Rails.root.join('db/fixtures/princesses/mulan.jpg')))

puts 'creating castles'

jasmine_castle = Castle.create!(name: "The Sultan's Palace", description: "Agrabah is located near the Jordan River. It is a city of mystery,
  of enchantment with its sorcerers, genies, and flying carpets.
Agrabah is based on and is largely inspired by the Iraqi city of Baghdad during the Islamic Golden Age.",
prince: 'Alladin', location: 'Agrabah', equipment: 'genie in a lamp, tiger', vehicle: 'flying carpet', price_per_night: '5',
user_id: jasmine.id, photo: File.open(Rails.root.join('db/fixtures/castles/jasmine-palace.jpg')))

elsa_castle = Castle.create!(name: "The Fair Kingdom", description: "In Arendelle's fair kingdom you can enjoy the beautiful mountains for sun tanning and to go skiing",
prince: 'Hot prince', location: 'Nordicway', equipment: 'Snow men, birds that can help you get dressed', vehicle: 'A sled ', price_per_night: '6',
user_id: elsa.id, photo: File.open(Rails.root.join('db/fixtures/castles/elsa_castle.jpg')))

ariel_castle = Castle.create!(name: "Triton's Castle", description: "Underwater paradise where you'll swim with the most beautiful fishes in the sea",
  prince: 'Prince Eric', location: 'Atlantica Kingdom', equipment: 'palms, seashell bikinis', vehicle: 'No need for a vehicle, swim!',
  price_per_night: '12', user_id: ariel.id, photo: File.open(Rails.root.join('db/fixtures/castles/ariel-castle.jpg')))

snowwhite_castle = Castle.create!(name: "Forest Cottage", description: "A lovely cottage in the forest, where you'll sing happily with all you animal friends.",
  location: 'Magic Forest', equipment: 'Seven dwarfs', price_per_night: '3', user_id: snowwhite.id, photo: File.open(Rails.root.join('db/fixtures/castles/snowwhite-cottage.jpg')))

puts 'Finished!'
