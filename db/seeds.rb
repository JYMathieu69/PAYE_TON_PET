# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Animal.destroy_all
User.destroy_all

chuck = User.new(last_name: "Norris", first_name: "Chuck", address: "Texas", telephone: "123-555-789", mail: "chucknorris@nothingelse.us")

paris = User.new(last_name: "Hilton", first_name: "Paris", address: "New York City", telephone: "I havn't your time honey", mail: "beautyparis@nothingelse.nyc")

jeanjacques = User.new(last_name: "Goldman", first_name: "Jean-Jacques", address: "Paris", telephone: "0601020304", mail: "jjgoldman@ilovesong.fr")

seraphin = Animal.new(name: "Seraphin", species: "Pigeon", sexe: "Masculin", description: "Demandez lui ce que vous voulez, Seraphin acceptera. Faites vous plaisir, pigeonnez le...", chip: false, worms: false, vaccined: false, accessories: "Des cheveux coincés dans les pattes.", owner: chuck)

luna = Animal.new(name: "Luna", species: "Chat", sexe: "Feminin", description: "Le poil doux comme la soie", chip: true, worms: true, vaccined: true, accessories: "Une ceinture Gucci", owner: jeanjacques)

guillaume = Animal.new(name: "Guillaume", species: "Suricat", sexe: "Masculin", descritpion: "Le bon copain de soirée! Une grande capacité à déployer un tas de conneries :)", chip: false, worms: false, vaccined: false, accessories: "Bandana de combat", owner: paris)

sophie = Animal.new(name: "Sophie", species: "Girafe", sexe: "Feminin", descritpion: "Te poussera à garder l'esprit ouvert et voir toujours plus loin.", chip: true, worms: false, vaccined: false, accessories: "Paire de lunette de soleil & un guettoblaster", owner: jeanjacques)

brandon = Animal.new(name: "Brandon", species: "Etalon", race: "Pur sang arabe" sexe: "Masculin", descritpion: "Infatigable, toujours bien monté, Brandon a de beaux muscles.", chip: true, worms: true, vaccined: true, accessories: "Une gourmette avec son nom", owner: chuck)
