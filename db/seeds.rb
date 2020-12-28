# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning database"
Article.destroy_all

puts "creating brand"
blu_velvet = Brand.new(name: "Blue Velvet")
blu_velvet.save!
adidas = Brand.new(name: "Adidas")
adidas.save!

puts "creating collection"
ete_2021 = Collection.new(name: "Eté 2021")
ete_2021.save!
hiver_2020 = Collection.new(name: "Hiver 2020")
hiver_2020.save!

puts "creating articles"
blow_up = Article.new(name: "blow up", price: 100, description: "You Lost You Lost You Lost You Lost You Lost You Lost You Lost You ", brand: blu_velvet, collection: ete_2021)

puts "seed created"
