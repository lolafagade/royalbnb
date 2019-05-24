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
mulan = User.create!(name: 'Mulan', email: 'mulan@ancient-china.com', password: "mulan!", avatar: File.open(Rails.root.join('db/fixtures/princesses/mulan.jpg')))
moana = User.create!(name: 'Moana', email: 'moana@mauisunshine.com', password: "moana!", avatar: File.open(Rails.root.join('db/fixtures/princesses/mulan.jpg')))
alice = User.create!(name: 'Alice', email: 'alice@wonderland.com', password: "alice!", avatar: File.open(Rails.root.join('db/fixtures/princesses/mulan.jpg')))
pocahontas = User.create!(name: 'Pocahontas', email: 'poca@cherokeelove.com', password: "pocahontas!", avatar: File.open(Rails.root.join('db/fixtures/princesses/mulan.jpg')))

puts 'creating castles'

jasmine_castle = Castle.create!(name: "The Sultan's Palace", description: "Agrabah is a city of mystery,
  of enchantment with its sorcerers, genies, and flying carpets.",
prince: 'Alladin', location: 'Urban', equipment: 'genie in a lamp, tiger', vehicle: 'flying carpet', price_per_night: '5',
user_id: jasmine.id, photo: File.open(Rails.root.join('db/fixtures/castles/jasmine-palace.jpg')))

elsa_castle = Castle.create!(name: "The Fair Kingdom", description: "In Arendelle's fair kingdom you can enjoy the beautiful mountains for sun tanning and to go skiing",
prince: 'Prince Hans', location: 'Møllendalsveien 1A, 5009 Bergen, Norway', equipment: 'Snow men, birds that can help you get dressed', vehicle: 'A sled', price_per_night: '6',
user_id: elsa.id, photo: File.open(Rails.root.join('db/fixtures/castles/elsa_castle.jpg')))

ariel_castle = Castle.create!(name: "Triton's Castle", description: "Underwater paradise where you'll swim with the most beautiful fishes in the sea",
prince: 'Prince Eric', location: '60 Tuckers Point Drive, Hamilton Parish HS 02, Bermuda', equipment: 'palms, seashell bikinis', vehicle: 'No need for a vehicle, swim!',
price_per_night: '12', user_id: ariel.id, photo: File.open(Rails.root.join('db/fixtures/castles/ariel-castle.jpg')))

snowwhite_castle = Castle.create!(name: "Forest Cottage", description: "A lovely cottage in the forest, where you'll sing happily with all you animal friends.",
location: 'Kartäuserstraße 99, 79104 Freiburg im Breisgau, Germany', equipment: 'Seven dwarfs', price_per_night: '3', user_id: snowwhite.id, photo: File.open(Rails.root.join('db/fixtures/castles/snowwhite-cottage.jpg')))

moana_castle = Castle.create!(name: "Heart of Fiti tent.", description: "Motunui is located in the middle of the ocean, great for a private get away or for those who love to go fishing.
Did you always dreamed about the idea to sleep under the starry sky? Then this is perfect!.", prince: 'none', location: 'Maui Ocean Center, The Aquarium of Hawaii, Maalaea Road, Wailuku, HI, USA', equipment: 'An angry grandmother, tattoos, weird dancing ritual with sticking your tongue out', vehicle: 'Kanoe', price_per_night: '3',
user_id: moana.id, photo: File.open(Rails.root.join('db/fixtures/castles/ariel-castle.jpg')))

alice_castle = Castle.create!(name: "Wonderland", description: "The castle located in the beautiful Wonderland is truly for those who want to go an exciting adventure. From a white rabbit wearing spectacles, a red waistcoat and carrying a large, golden pocket watch to turning into a butterfly… all is possible in Wonderland.",
prince: 'none', location: 'Laan van Ambacht 2, 2631 RJ Nootdorp', equipment: 'Cheshire Cat and a cd of Lucy in the sky with diamonds.', vehicle: 'Your mind', price_per_night: '3',
user_id: alice.id, photo: File.open(Rails.root.join('db/fixtures/castles/ariel-castle.jpg')))

pocahontas_castle = Castle.create!(name: "Tipi Tent", description: "Are you tired of all the material things in your life and really have some time off to sit and think and relax? This Tipi tent is perfect for yoga and meditation practices. Embrace your inner free spirit and let it go.",
prince: 'John Smith', location: '3375 Cemetery Hill Rd SE, Jefferson, OR 97352, USAx', equipment: 'Talking tree for advise, pet raccoon and hummingbird.', vehicle: 'Bare foot and run', price_per_night: '5',
user_id: pocahontas.id, photo: File.open(Rails.root.join('db/fixtures/castles/ariel-castle.jpg')))

puts 'Finished!'
