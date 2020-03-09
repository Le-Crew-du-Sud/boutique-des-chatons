require 'faker'
# Fichier à màj avec les nouvelles tables et les fakers souhaités :
# Lien vers faker : https://github.com/faker-ruby/faker

puts "Réinitialisation de la table Table1"
Table1.destroy_all
puts "Table Table1 réinitialisée"

puts "Création des seeds ..."
seed = 1
5.times do
  Table1.create(
    object: Faker::Lorem.words,
    body: Faker::Lorem.sentence)
    puts "Création du seed #{seed}"
    seed += 1
end
puts "Création des seeds terminées."