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
Brand.destroy_all
Collection.destroy_all

puts "creating brand"
blu_velvet = Brand.new(name: "Blue Velvet")
blu_velvet.save!
laid_back_london = Brand.new(name: "Laid Back London")
laid_back_london.save!
cervone = Brand.new(name:"Cervone")
cervone.save!

puts "creating collection"
ete_2021 = Collection.new(name: "Eté 2021")
ete_2021.save!
hiver_2020 = Collection.new(name: "Hiver 2020")
hiver_2020.save!

puts "creating articles"
run_file = URI.open('https://images.unsplash.com/photo-1512132269166-1fcc8e571966?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
run = Article.new(name: "Run", price: 100, description: "You Lost You Lost You Lost You Lost You Lost You Lost You Lost You ", brand: blu_velvet, collection: ete_2021)
run.photo.attach(io: run_file, filename: 'run.png', content_type: 'image/png')
run.save!

setsu_file = URI.open('https://images.unsplash.com/photo-1512132269166-1fcc8e571966?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
setsu = Article.new(name: "Setsu", price: 100, description: "You Lost You Lost You Lost You Lost You Lost You Lost You Lost You ", brand: laid_back_london, collection: hiver_2020)
setsu.photo.attach(io: setsu_file, filename: 'setsu.png', content_type: 'image/png')
setsu.save!

amelie_file = URI.open('https://images.unsplash.com/photo-1512132269166-1fcc8e571966?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
amelie = Article.new(name: "Amélie", price: 100, description: "You Lost You Lost You Lost You Lost You Lost You Lost You Lost You ", brand: blu_velvet, collection: ete_2021)
amelie.photo.attach(io: amelie_file, filename: 'amelie.png', content_type: 'image/png')
amelie.save!

jordan_file = URI.open('https://images.unsplash.com/photo-1512132269166-1fcc8e571966?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
jordan = Article.new(name: "Jordan", price: 100, description: "You Lost You Lost You Lost You Lost You Lost You Lost You Lost You ", brand: cervone, collection: hiver_2020)
jordan.photo.attach(io: jordan_file, filename: 'jordan.png', content_type: 'image/png')
jordan.save!

josephine_file = URI.open('https://images.unsplash.com/photo-1512132269166-1fcc8e571966?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
josephine = Article.new(name: "Joséphine", price: 100, description: "You Lost You Lost You Lost You Lost You Lost You Lost You Lost You ", brand: blu_velvet, collection: ete_2021)
josephine.photo.attach(io: josephine_file, filename: 'josephine.png', content_type: 'image/png')
josephine.save!

clara_file = URI.open('https://images.unsplash.com/photo-1512132269166-1fcc8e571966?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
clara = Article.new(name: "Clara", price: 100, description: "You Lost You Lost You Lost You Lost You Lost You Lost You Lost You ", brand: cervone, collection: ete_2021)
clara.photo.attach(io: clara_file, filename: 'clara.png', content_type: 'image/png')
clara.save!

pauline_file = URI.open('https://images.unsplash.com/photo-1512132269166-1fcc8e571966?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
pauline = Article.new(name: "Pauline", price: 100, description: "You Lost You Lost You Lost You Lost You Lost You Lost You Lost You ", brand: blu_velvet, collection: ete_2021)
pauline.photo.attach(io: pauline_file, filename: 'pauline.png', content_type: 'image/png')
pauline.save!

emile_file = URI.open('https://images.unsplash.com/photo-1512132269166-1fcc8e571966?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
emile = Article.new(name: "Emile", price: 100, description: "You Lost You Lost You Lost You Lost You Lost You Lost You Lost You ", brand: laid_back_london, collection: ete_2021)
emile.photo.attach(io: emile_file, filename: 'emile.png', content_type: 'image/png')
emile.save!
puts "seed created"
