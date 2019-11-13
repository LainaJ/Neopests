User.destroy_all 
Pest.destroy_all 

puts "creating seeds"
user1 = User.find_or_create_by(id: 1, username: "Ritricia", password: "Cans4Lyfe", email: "ratricia@gcan.com", primary_pest_id: nil)
user2 = User.find_or_create_by(id: 2, username: "Laina", password: "123", email: "subway@gmail.com", primary_pest_id: 4)

pest1 = Pest.find_or_create_by(id: 1, name: "Pongo", species: "squirrel", color: "pink", home: "Central Park", user_id: user1.id)
pest2 = Pest.find_or_create_by(id: 2, name: "Jeremy", species: "rat", color: "orange", home: "Subway", user_id: user1.id)
pest3 = Pest.find_or_create_by(id: 3, name: "Mortricia", species: "mouse", color: "red", home: "Pizza shop", user_id: user1.id)
pest4 = Pest.find_or_create_by(id: 4, name: "Zingo", species: "pigeon", color: "brown", home: "central", user_id: user2.id)
puts "you've been seeded"