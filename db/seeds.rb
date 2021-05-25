# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Booking.destroy_all
Animal.destroy_all
User.destroy_all

chuck = User.create!(last_name: "Norris", first_name: "Chuck", address: "Texas", telephone: "123-555-789", email: "chucknorris@nothingelse.us", password: "123456789")

paris = User.create!(last_name: "Hilton", first_name: "Paris", address: "New York City", telephone: "I havn't your time honey", email: "beautyparis@nothingelse.nyc", password: "123456789")

jeanjacques = User.create!(last_name: "Goldman", first_name: "Jean-Jacques", address: "Paris", telephone: "0601020304", email: "jjgoldman@ilovesong.fr", password: "123456789")

seraphin = Animal.create!(name: "Seraphin", species: "Pigeon", gender: "Masculin", description: "Demandez lui ce que vous voulez, Seraphin acceptera. Faites vous plaisir, pigeonnez le...", chip: false, worm: false, vaccined: false, accessories: "Des cheveux coincés dans les pattes.", owner: chuck, daily_price: 1)
seraphin_file = URI.open('https://www.pausecafein.fr/images/cafein/2016/06/pigeon/chier.jpg')
seraphin.photo.attach(io: seraphin_file, filename: 'pigeon.jpg', content_type: 'image/jpg')

luna = Animal.create!(name: "Luna", species: "Chat", gender: "Feminin", description: "Le poil doux comme la soie", chip: true, worm: true, vaccined: true, accessories: "Une ceinture Gucci", owner: jeanjacques, daily_price: 50)

guillaume = Animal.create!(name: "Guillaume", species: "Suricat", gender: "Masculin", description: "Le bon copain de soirée! Une grande capacité à déployer un tas de conneries :)", chip: false, worm: false, vaccined: false, accessories: "Bandana de combat", owner: paris, daily_price: 250)

sophie = Animal.create!(name: "Sophie", species: "Girafe", gender: "Feminin", description: "Vois BIG dans la ThugLife de Sophie", chip: true, worm: false, vaccined: false, accessories: "Paire de lunette de soleil & un guettoblaster", owner: jeanjacques, daily_price: 125)

brandon = Animal.create!(name: "Brandon", species: "Etalon", race: "Pur sang arabe", gender: "Masculin", description: "Infatigable, toujours bien monté, Brandon a de beaux muscles.", chip: true, worm: true, vaccined: true, accessories: "Une gourmette avec son nom", owner: chuck, daily_price: 200)
