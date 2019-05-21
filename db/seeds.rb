puts 'clearing data'
Castle.destroy_all
User.destroy_all


puts 'creating data'

jasmine = User.create!(name: 'Jasmine', email: "jasmine@agrabah.com", password: "jasmine!",
  avatar: 'zchftnfqqiy3zzzlsswe.jpg')
# User.new(name: 'Cindirella', email: "cindirella@cindirella-castle.com", password: "cindirella!", avatar:)
# User.new(name: 'Snow-white', email: "snowwhite@thequeenscastle.com", password: "snwowhite!", avatar:)
# User.new(name: 'Mulan', email: "mulan@old-china.com", password: "mulan!", avatar:)

jasmine_castle = Castle.create!(name: "The Sultan's Palace", description: "Agrabah is located near the Jordan River. It is a city of mystery,
  of enchantment with its sorcerers, genies, and flying carpets.
Agrabah is based on and is largely inspired by the Iraqi city of Baghdad during the Islamic Golden Age.",
prince: 'Alladin', location: 'Agrabah', equipment: 'genie in a lamp, tiger', vehicle: 'flying carpet', price_per_night: '5',
user_id: jasmine.id, photo: 'https://res.cloudinary.com/dl0kdumil/image/upload/v1558438134/jc3kgtdtrgyj816itmxz.jpg')




