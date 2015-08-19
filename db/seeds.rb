Restaurant.destroy_all
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number:  "01 45 65 75 32",
    category:      "french"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number:  "01 45 65 40 66",
    category:      "italian"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number:  "01 50 33 46 96",
    category:      "belgian"
  },
  {
    name:         "Fraiche",
    address:      "rue Colonel Fabien 75010 Paris",
    phone_number:  "01 50 33 52 96",
    category:      "french"
  },
  {
    name:         "Clamato",
    address:      "75011 Paris",
    phone_number:  "01 40 33 46 90",
    category:      "chinese"
  }
]
restaurants_attributes.each { |params| Restaurant.create!(params) }
top = Review.new(content: "c'était top", rating: 4)
restaurant1 = Restaurant.find(1)
top.restaurant = restaurant1
top.save

genial = Review.new(content: "accueil génial", rating: 3)
restaurant2 = Restaurant.find(2)
genial.restaurant = restaurant2
genial.save

sale = Review.new(content: "un rat courrait dans les cuisines", rating: 1)
sale.restaurant = Restaurant.find(3)
sale.save

romantic = Review.new(content: "so romantic !", rating: 3)
romantic.restaurant = Restaurant.find(4)
romantic.save

intox = Review.new(content: "je suis malade", rating:0)
intox.restaurant = Restaurant.find(5)



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
