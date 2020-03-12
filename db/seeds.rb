require 'faker'
# Fichier à màj avec les nouvelles tables et les fakers souhaités :
# Lien vers faker : https://github.com/faker-ruby/faker

puts "Réinitialisation des tables ..."
Category.destroy_all
print "Categories"
Item.destroy_all
print ", Items"
Cart.destroy_all
print ", Carts"
User.destroy_all
puts ", Users."
puts "Tables réinitialisées."

puts "Création des seeds ..."
seed = 1
5.times do
  Category.create(
    name: Faker::Movies::StarWars.specie)
    puts "Seed Categorie n°#{seed} crée."
    seed += 1
end
seed = 1
image_url = 1
5.times do
  Item.create(
    title: Faker::JapaneseMedia::DragonBall.character,
    description: Faker::Movies::StarWars.wookiee_sentence,
    price: Faker::Commerce.price,
    image_url: "https://radiomedecinedouce.com/attachments/images/broadcast/41063/medium.png", #"#{image_url}.jpg"
    category_id:2,)
    puts "Seed Item n°#{seed} crée."
    seed += 1
    image_url += 1
end
puts "Création des seeds terminées."
