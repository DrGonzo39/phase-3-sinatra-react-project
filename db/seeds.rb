puts "🌱 Seeding spices..."

User.create(name: "Tom", rating: "excellent")
User.create(name: "Mad Dog", rating: "very fair")
User.create(name: "Jim", rating: "knowledgeable")
User.create(name: "Floyd", rating: "on the juice")

tom = User.find_by(name: "Tom")
tom.bikes.create([
    {name: "Lily", brand: "Litespeed", terrain: "road", condition: "mint", price: 200},
    {name: "Grey grinder", brand: "Lynskey", terrain: "gravel", condition: "mint", price: 250}
])

mad_dog = User.find_by(name: "Mad Dog")
mad_dog.bikes.create([
    {name: "Hard Rock", brand: "Specialized", terrain: "mountain", condition: "lightly used", price: 55},
    {name: "G6", brand: "Cannondale", terrain: "all", condition: "used", price: 80},
    {name: "Verve", brand: "Trek", terrain: "road commuter", condition: "new", price: 175}
])

jim = User.find_by(name: "Jim")
jim.bikes.create([
    {name: "Ranger", brand: "Jamis", terrain: "dirt", condition: "near mint", price: 125},
    {name: "Atroz", brand: "Diamondback", terrain: "mountain", condition: "lightly used", price: 160}
])

floyd = User.find_by(name: "Floyd")
floyd.bikes.create([
    {name: "Roadmachine", brand: "BMC", terrain: "road", condition: "near mint", price: 225},
    {name: "Orca", brand: "Orbea", terrain: "road", condition: "used", price: 130}
])


puts "✅ Done seeding!"
