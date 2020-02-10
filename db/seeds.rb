# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Réinitialisation des tables :"
print " City"
City.destroy_all
print ", User"
User.destroy_all
print ", Gossip"
Gossip.destroy_all
print ", Tag"
Tag.destroy_all
puts ", JoinTableGossipTag."
JoinTableGossipTag.destroy_all
puts "Tables réinitialisées !\n\n"

desired_seeds = 10

puts "Création de #{desired_seeds} seeds ..."
puts "Si vous souhaitez modifier le nombre de seeds généré, veuillez modifier la variable correspondante dans le fichier : 'db/seeds.rb'."
puts "Ensuite, relancez un 'rails db:seed' dans votre terminal'. \n\n"

seed_number = 0
desired_seeds.times do
    city = City.create!(name: Faker::Address.city)
    user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Quote.famous_last_words, email: Faker::Internet.email, age: Faker::Number.between(from: 18, to: 70), city: city)
    gossip = Gossip.create!(title: Faker::Quote.famous_last_words, content: Faker::Quote.famous_last_words, user: user)
    tag = Tag.create!(title: "#" + Faker::Science.element)
    join_table_gossip_tag = JoinTableGossipTag.create!(tag: tag, gossip: gossip)
    seed_number += 1
    puts " Seed #{seed_number} crée."
end
puts "\nCréation des seeds terminées !"