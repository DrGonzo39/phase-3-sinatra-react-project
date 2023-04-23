puts "🌱 Seeding spices..."

User.create(name: "Tom", rating: "excellent")
User.create(name: "Mad Dog", rating: "very fair")
User.create(name: "Jim", rating: "knowledgeable")
User.create(name: "Floyd", rating: "on the juice")
User.create(name: "Remy", rating: "shredding")

tom = User.find_by(name: "Tom")
tom.bikes.create([
    {name: "Lily", brand: "Litespeed", terrain: "road", condition: "mint", price: 200, image: "https://cdn.shopify.com/s/files/1/2318/5263/products/BRD18332_PH2_02_2048x2048.jpg?v=1604104913"},
    {name: "Grey grinder", brand: "Lynskey", terrain: "gravel", condition: "mint", price: 250, image: "http://gravelcyclist.com/wp-content/uploads/2017/05/LynskeyPro64-2017-2.jpg"}
])

mad_dog = User.find_by(name: "Mad Dog")
mad_dog.bikes.create([
    {name: "Hard Rock", brand: "Specialized", terrain: "mountain", condition: "lightly used", price: 55, image: "https://store.bicycleczar.com/v/vspfiles/photos/09170229-2T.jpg"},
    {name: "G6", brand: "Cannondale", terrain: "all", condition: "used", price: 80, image: "https://roadbikeaction.com/wp-content/uploads/2018/08/C19_C15309M_TopstoneDisc_Force_1_ELB.jpg"},
    {name: "Verve", brand: "Trek", terrain: "road commuter", condition: "new", price: 175, image: "https://i.ebayimg.com/00/s/NzY4WDEwMjQ=/z/nKsAAOSwq1JZGfDF/$_86.JPG"}
])

jim = User.find_by(name: "Jim")
jim.bikes.create([
    {name: "Ranger", brand: "Jamis", terrain: "dirt", condition: "near mint", price: 125, image: "https://content.propertyroom.com/listings/sellers/seller1/images/origimgs/1_3172014194236898477.jpg"},
    {name: "Atroz", brand: "Diamondback", terrain: "mountain", condition: "lightly used", price: 160, image: "https://outdoorlabwithj.com/wp-content/uploads/2020/08/1.jpg"}
])

floyd = User.find_by(name: "Floyd")
floyd.bikes.create([
    {name: "Roadmachine", brand: "BMC", terrain: "road", condition: "near mint", price: 225, image: "https://cdn.shopify.com/s/files/1/2318/5263/products/BRD11033_BJ_01_2048x2048.jpg?v=1589844340"},
    {name: "Orca", brand: "Orbea", terrain: "road", condition: "used", price: 130, image: "https://www.velobrival.com/wp-content/uploads/2019/12/velo-orbea-orca-aero-M11eTEAM-D-2020-gris.jpg"}
])

remy = User.find_by(name: "Remy")
remy.bikes.create([
    {name: "Tyee CF", brand: "Propain", terrain: "mountain", condition: "near mint", price: 300, image: "https://s14761.pcdn.co/wp-content/uploads/2020/05/propain-tyee-cf-2020-enduro-MTB-Review-Test-0XX-013.jpg"},
    {name: "Spindrift", brand: "Propain", terrain: "mountain", condition: "new", price: 400, image: "https://p.vitalmtb.com/photos/products/20538/photos/27530/s1600_2018_Propain_Spindrift_Comp_raw01.jpg?1503977416"}
])


puts "✅ Done seeding!"
