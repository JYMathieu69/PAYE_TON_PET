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

seraphin = Animal.create!(name: "Seraphin", species: "Pigeon", gender: "Male", description: "Demandez lui ce que vous voulez, Seraphin acceptera. Faites vous plaisir, pigeonnez le...", chip: false, worm: false, vaccined: false, accessories: "Des cheveux coincés dans les pattes.", owner: chuck, daily_price: 1)
seraphin_file = URI.open('https://www.pausecafein.fr/images/cafein/2016/06/pigeon/chier.jpg')
seraphin.photo.attach(io: seraphin_file, filename: 'pigeon.jpg', content_type: 'image/jpg')

luna = Animal.create!(name: "Luna", species: "Chat", gender: "Female", description: "Le poil doux comme la soie", chip: true, worm: true, vaccined: true, accessories: "Une ceinture Gucci", owner: jeanjacques, daily_price: 50)
luna_file = URI.open('https://www.santevet.com/upload/admin/images/article/chat_2_2/chat__plus_bel_animal_du_monde.jpg')
luna.photo.attach(io: luna_file, filename: 'chat.jpg', content_type: 'image/jpg')

guillaume = Animal.create!(name: "Guillaume", species: "Suricat", gender: "Male", description: "Le bon copain de soirée! Une grande capacité à déployer un tas de conneries :)", chip: false, worm: false, vaccined: false, accessories: "Bandana de combat", owner: paris, daily_price: 250)
guillaume_file = URI.open('https://img.pixers.pics/pho_wat(s3:700/FO/45/28/25/76/700_FO45282576_547d25a7f247d74c8766a441d3f2dc30.jpg,525,700,cms:2018/10/5bd1b6b8d04b8_220x50-watermark.png,over,305,650,jpg)/papiers-peints-suricate.jpg.jpg')
guillaume.photo.attach(io: guillaume_file, filename: 'suricat.jpg', content_type: 'image/jpg')

sophie = Animal.create!(name: "Sophie", species: "Girafe", gender: "Female", description: "Vois BIG dans la ThugLife de Sophie", chip: true, worm: false, vaccined: false, accessories: "Paire de lunette de soleil & un guettoblaster", owner: jeanjacques, daily_price: 125)
sophie_file = URI.open('https://cdn131.picsart.com/260931981024202.jpg?to=crop&type=webp&r=310x310&q=75')
sophie.photo.attach(io: sophie_file, filename: 'girafe.jpg', content_type: 'image/jpg')

brandon = Animal.create!(name: "Brandon", species: "Etalon", race: "Pur sang arabe", gender: "Male", description: "Infatigable, toujours bien monté, Brandon a de beaux muscles.", chip: true, worm: true, vaccined: true, accessories: "Une gourmette avec son nom", owner: chuck, daily_price: 200)
brandon_file = URI.open('https://i.skyrock.net/9546/79349546/pics/3016979749_1_3_Ilo43A01.jpg')
brandon.photo.attach(io: brandon_file, filename: 'cheval.jpg', content_type: 'image/jpg')


Booking.create!(date: '02-02-2022', customer: chuck, animal: guillaume)
Booking.create!(date: '03-03-2023', customer: chuck, animal: sophie)
Booking.create!(date: '04-04-2024', customer: chuck, animal: luna)