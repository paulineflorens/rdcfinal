# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "cleaning database"
Article.destroy_all

puts "creating brand"
blu_velvet = Brand.new(name: "Blue Velvet")
blu_velvet.save!
laid_back_london = Brand.new(name: "Laid Back London")
laid_back_london.save!

puts "creating collection"
ete_2021 = Collection.new(name: "Eté 2021")
ete_2021.save!
hiver_2020 = Collection.new(name: "Hiver 2020")
hiver_2020.save!

puts "creating articles"
run_file = URI.open('https://www.decale.net/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/B/L/BLU_VELVET_Run_Argent-1_1.jpg')
run = Article.new(name: "run", price: 100, description: "You Lost You Lost You Lost You Lost You Lost You Lost You Lost You ", brand: blu_velvet, collection: ete_2021)
run.photo.attach(io: run_file, filename: 'run.png', content_type: 'image/png')
run.save!

setsu_file = URI.open('https://www.la-botte.com/PHOTOS/Laidback_London/SETSU_CROCHET_ZIP_MUSTARD_HD.jpg')
setsu = Article.new(name: "setsu", price: 100, description: "You Lost You Lost You Lost You Lost You Lost You Lost You Lost You ", brand: laid_back_london, collection: hiver_2020)
setsu.photo.attach(io: setsu_file, filename: 'setsu.png', content_type: 'image/png')
setsu.save!

puts "seed created"
