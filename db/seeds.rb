require 'faker'
# Fichier à màj avec les nouvelles tables et les fakers souhaités :
# Lien vers faker : https://github.com/faker-ruby/faker

puts "Réinitialisation des tables ..."
Categories.destroy_all
print "Categories"
Items.destroy_all
print ", Items"
Purchases.destroy_all
print ", Purchases"
Users.destroy_all
puts ", Users."
puts "Tables réinitialisées"

puts "Création des seeds ..."
seed = 1
5.times do
  Categories.create(
    name: Faker::Lorem.words)
    puts "Seed Categories n°#{seed} crée."
    seed += 1
end
seed = 1
image_url = 1
5.times do
  Items.create(
    title: Faker::Lorem.words,
    description: Faker::Lorem.sentence,
    price: Faker::Commerce.price,
    image_url: "#{image_url}.jpg",
    category_id:2,)
    puts "Seed Items n°#{seed} crée."
    seed += 1
    image_url += 1
end
seed = 1
5.times do
  Purchases.create(
    user_id: 2,
    item_id: 2,
    quantity: 1,
    unite_price: Faker::Commerce.price,
    stripe_id: Faker::Alphanumeric.alpha(number: 10))
    puts "Seed Purchases n°#{seed} crée."
    seed += 1
end
seed = 1
5.times do
  Users.create(
    email: Faker::Lorem.words)
    puts "Seed Users n°#{seed} crée."
    seed += 1
end
puts "Création des seeds terminées."