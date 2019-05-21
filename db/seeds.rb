# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'clearing data'
Castle.destroy_all
User.destroy_all


puts 'creating data'

jasmine = User.create!(name: 'Jasmine', email: "jasmine@agrabah.com", password: "jasmine!",
  avatar: 'zchftnfqqiy3zzzlsswe.jpg')
elsa = User.create!(name: 'Elsa', email: "elsa@corona-castle.com", password: "elsa!!", avatar: 'cbpjyuopqta24ynidckj.jpg')
ariel = User.create!(name: 'Ariel', email: "ariel@under-water.com", password: "ariel!", avatar: 'bdulrywgz5pxsgjslbg3.jpg')
snowwhite = User.create!(name: 'Snow white', email: "snowwhite@forest.com", password: "snowwhite!", avatar: 'o4v8kfbsajbqit18f63n.jpg')
belle = User.create!(name: 'Belle', email: "belle@huge-castle.com", password: "belle!", avatar: 'ontlinbfv491svzkrv15.jpg')
cinderella = User.create!(name: 'Cinderella', email: "cinderella@cinderella-castle.com", password: 'cinderella!', avatar: 'sbep6ww5pbwqklq3bnsy.jpg')
mulan = User.create!(name: 'Mulan', email: 'mulan@ancient-china.com', password: 'mulan!', avatar: 'ya2gz1dgu4dk3mwr4zim.jpg')


jasmine_castle = Castle.create!(name: "The Sultan's Palace", description: "Agrabah is located near the Jordan River. It is a city of mystery,
  of enchantment with its sorcerers, genies, and flying carpets.
Agrabah is based on and is largely inspired by the Iraqi city of Baghdad during the Islamic Golden Age.",
prince: 'Alladin', location: 'Agrabah', equipment: 'genie in a lamp, tiger', vehicle: 'flying carpet', price_per_night: '5',
user_id: jasmine.id, photo: 'xaorewukh3xrmznlycff.jpg')

elsa_castle = Castle.create!(name: "The Fair Kingdom", description: "In Arendelle's fair kingdom you can enjoy the beautiful mountains for sun tanning and to go skiing",
prince: 'Hot prince', location: 'Nordicway', equipment: 'Snow men, birds that can help you get dressed', vehicle: 'A sled ', price_per_night: '6',
user_id: elsa.id, photo: 'ryktyv36yaxrcqcc095m.jpg')

ariel_castle = Castle.create!(name: "Triton's Castle", description: "Underwater paradise where you'll swim with the most beautiful fishes in the sea",
  prince: 'Prince Eric', location: 'Atlantica Kingdom', equipment: 'palms, seashell bikinis', vehicle: 'No need for a vehicle, swim!',
  price_per_night: '12', user_id: ariel.id, photo: 'br1pofjhsgbb49prvxnr')

snowwhite_castle = Castle.create!(name: "Forest Cottage", description: "A lovely cottage in the forest, where you'll sing happily with all you animal friends.",
  location: 'Magic Forest', equipment: 'Seven dwarfs', price_per_night: '3', user_id: snowwhite.id, photo: 'ooxbjzljcazjqlhqesnz.jpg')
