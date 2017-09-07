# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Type.destroy_all

users = [
  {
    first_name: "Boris",
    last_name: "Paillard",
    email: "boris@lewagon.org",
    password: "123456",
    password_confirmation: "123456"
  },
  {
    first_name: "Alice",
    last_name: "Clavel",
    email: "alice@lewagon.org",
    password: "123456",
    password_confirmation: "123456"
  },
  {
    first_name: "Ugo",
    last_name: "Mare",
    email: "ugo@lewagon.org",
    password: "123456",
    password_confirmation: "123456"
  },
  {
    first_name: "Sey",
    last_name: "Cheong",
    email: "seycheong@gmail.com",
    password: "123456",
    password_confirmation: "123456"
  },
  {
    first_name: "Maren",
    last_name: "Wehrheim",
    email: "marenwehrheim@gmail.com",
    password: "123456",
    password_confirmation: "123456"
  },
  {
    first_name: "John",
    last_name: "Fish",
    email: "johnfish@gmail.com",
    password: "123456",
    password_confirmation: "123456"
  },
]

users.each do |user|
  User.create(user)
end

User.find_by_first_name("Boris").photo_url = "https://kitt.lewagon.com/placeholder/users/papillard"
User.find_by_first_name("Alice").photo_url = "https://kitt.lewagon.com/placeholder/users/aliceclv"
User.find_by_first_name("Ugo").photo_url = "https://kitt.lewagon.com/placeholder/users/ugomare"
User.find_by_first_name("Sey").photo_url = "https://kitt.lewagon.com/placeholder/users/sey1000"
User.find_by_first_name("Maren").photo_url = "https://kitt.lewagon.com/placeholder/users/maren7794"
User.find_by_first_name("John").photo_url = "https://kitt.lewagon.com/placeholder/users/j31"


popups = [
  {
    user: User.find_by_first_name("Boris"),
    title: "Friggin Good Fench Fries",
    funding_goal: Faker::Number.number(6),
    amount_pledged: Faker::Number.number(5),
    deadline: Faker::Date.forward(23),
    price: Faker::Number.number(2),
    status: 'pending',
    address: "sweden",
    description: "I'm French and I can't find good french fries in Berlin. My idea came about as a way to salute the side dish that's often overshadowed by the burger it's served with. The production involves six months of preparation including a solid four days of 'logistical nightmares' that will lead up to the opening. At long last, fries aren't just the supporting actors — With me, they're the entire production. One that deserves a standing ovation at the next best popup!",
    seat_capacity: Faker::Number.number(3)
  },
  {
    user: User.find_by_first_name("Alice"),
    title: "Melt-In-Your-Mouth Macarons",
    funding_goal: Faker::Number.number(6),
    amount_pledged: Faker::Number.number(4),
    deadline: Faker::Date.forward(23),
    price: Faker::Number.number(2),
    status: 'pending',
    address: "paris",
    description: "Dainty, delicate, sweet little pillows of perfection. My macarons are the fanciest sandwich cookies you’ve ever tasted. Alice plans on packing luscious, seasonally-inspired flavors like peach, hazelnut and lavender into these delicate French confections. The macarons are so tasty they’ll make you want to unhinge your jaw and inhale the whole box at once. Try to restrain yourself; this is a grown up treat. A treat you can enjoy if you support my popup!",
    seat_capacity: Faker::Number.number(3)
  },
  {
    user: User.find_by_first_name("Ugo"),
    title: "Bageuttes You'll Beg For",
    funding_goal: Faker::Number.number(6),
    amount_pledged: Faker::Number.number(5),
    deadline: Faker::Date.forward(23),
    price: Faker::Number.number(2),
    status: 'pending',
    description: "Ugo, the owner of Jardin St James, has been crying out for a real French baguette for more than eight years. Now, he's doing something about it by bringing simple, fresh baguettes to Berlin via a pop-up. The menu includes le pêcheur, a crusty baguette stuffed with tuna, mayonnaise, tomatoes and lettuce. There's also the la raclette with ham, potatoes, cornichons and finished off with a generous helping of Dijon mustard.",
    seat_capacity: Faker::Number.number(3)
  },
  {
    user: User.find_by_first_name("Sey"),
    title: "Funk Seoul Sister",
    funding_goal: Faker::Number.number(6),
    amount_pledged: Faker::Number.number(4),
    deadline: Faker::Date.forward(23),
    price: Faker::Number.number(2),
    status: 'pending',
    address: "berlin",
    description: "Funk Seoul Sister by Sey will be the best Korean street food you'll come across. I serve creative dishes inspired by Korean and Japanese fare, and it'll be one your favorite food trucks in Berlin. My signature menu item bi bim bap has gochujang barbecue sauce, carrots, kimchi cucumbers, ginger-scallion aioli and even bits of potato chip. Korean food you'll drool after!",
    seat_capacity: Faker::Number.number(3)
  },
  {
    user: User.find_by_first_name("Maren"),
    title: "Beyond the Bierhaus",
    funding_goal: Faker::Number.number(6),
    amount_pledged: Faker::Number.number(5),
    deadline: Faker::Date.forward(23),
    price: Faker::Number.number(2),
    status: 'pending',
    address: "berlin",
    description: "I'm here to introduce the real food Germans eat to you touristy Berliners. My family speciality is making schnitzel, but you'll be knocked away by my bratwurst, pork knuckle, leberkase, pretzels, bread dumplings, sauerkraut, potatoes, strudel and sachertorte. Good, hearty stuff.",
    seat_capacity: Faker::Number.number(3)
  },
  {
    user: User.find_by_first_name("John"),
    title: "Bite Me Burger",
    funding_goal: Faker::Number.number(6),
    amount_pledged: Faker::Number.number(5),
    deadline: Faker::Date.forward(23),
    price: Faker::Number.number(2),
    status: 'pending',
    address: "berlin",
    description: "I'm a self-pronounced 'burger bro' - I value gourmet burgers. I Instagram every patty that comes my way. My self-worth is dependent on knowing where the best burgers are and right now, I can't find any in Berlin. I'm here to give you a spot-on burger recommendation at a moment's notice - and that's going to be at my next popup. Years of experience downing burgers means I have the expertise to deliver amazing taste only a quality burger can deliver. Support my popup, and you too can be a burger connoissuer.",
    seat_capacity: Faker::Number.number(3),
  },
]

popups.each do |popup_attributes|
  Popup.create(popup_attributes)
end


Popup.find_by_title("Friggin Good Fench Fries").photo_urls = [
  'https://cdn.eyeem.com/thumb/b19faf4b8314865df63178c4e07a708a4b39c7d5-1473234719053/w/900',
  'https://cdn.eyeem.com/thumb/8a76bd931bb961644aa4ff34c2f3e0a404df75ad-1454098315248/w/900'
  ]
Popup.find_by_title("Melt-In-Your-Mouth Macarons").photo_urls = [
  'https://cdn.eyeem.com/thumb/19b746c54f3bf458a629f60d5521d68cd1caf8e8-1461089298534/w/950',
  'https://cdn.eyeem.com/thumb/c071c4b94e719d18d64fa03c3b952262be52a3ef-1478033751939/1800/1800'
  ]
Popup.find_by_title("Bageuttes You'll Beg For").photo_urls = [
  'https://cdn.eyeem.com/thumb/4816794ecd318058b80d096987ec1ac736f44a11-1465922254665/w/750',
  'https://cdn.eyeem.com/thumb/90f753bb2f6f3de43b24b552d46eac06ca38efc4-1489237406658/w/850'
  ]
Popup.find_by_title("Funk Seoul Sister").photo_urls = [
  'https://cdn.eyeem.com/thumb/9207dc9e581fe6fb043fc8eef93a38114788a7b5-1424801060/w/900',
  'https://cdn.eyeem.com/thumb/c3ce6214cd18375d168770677f716cb1fe7939bb-1431084323/1280/1280?watermark=false'
  ]
Popup.find_by_title("Beyond the Bierhaus").photo_urls = [
  'https://cdn.eyeem.com/thumb/d177db518766a730bc64973c91a50c38a4e74e1d-1403391490/w/800',
  'https://cdn.eyeem.com/thumb/444c5ae6f60a6ada708d69c1e4735eedac53657e-1472039948526/1800/1800'
  ]
Popup.find_by_title("Bite Me Burger").photo_urls = [
  'https://cdn.eyeem.com/thumb/9bddc0155e7622363d95c0f4070b69103112d0e9-1487522265564/1800/1800',
  'https://cdn.eyeem.com/thumb/dcf86ce0b6df2446cd1d68df1e72dc685895102d-1468933807802/w/700'
  ]


# Adds number of orders
users = User.all
Popup.all.each do |popup|
  (1..6).to_a.sample.times do |index|
    user = users[index]
    seats = (1..10).to_a.sample
    Order.create!(user:user, popup:popup, ordered_seats:seats, state:"paid", amount:seats*popup.price)
  end
end



#  2.times do
#    popup = Popup.new(
#     user_id: User.last.id,
#     title: Faker::App.name,
#     funding_goal: Faker::Number.number(6),
#     amount_pledged: Faker::Number.number(4),
#     deadline: Faker::Date.forward(23),
#     price: Faker::Number.number(2),
#     description: Faker::Lorem.paragraph,
#     seat_capacity: Faker::Number.number(3)
#     )
#    popup.save
#  end
# end

category = [
  { name: 'American'},
  { name: 'Chinese'},
  { name: 'French'},
  { name: 'German'},
  { name: 'Indian'},
  { name: 'Italian'},
  { name: 'Japanese '},
  { name: 'Korean'},
  { name: 'Mexican'},
  { name: 'Spanish'},
  { name: 'Thai'},
  { name: 'Vietnamese'},
  { name: 'Fusion'},
  { name: 'Healthy'},
  { name: 'Veg/Vegan'},
  { name: 'Brunch'},
  { name: 'Burgers'},
  { name: 'Tapas'},
  { name: 'Pizza'},
  { name: 'Snack'},
  { name: 'Dessert'},
  { name: 'Wine/Beer'},
  { name: 'Cocktails'},
  { name: 'Cafe'},
]

category.each do |c|
  Type.create(c)
end

70.times do
  p = Popuptype.new(type_id: Type.all.sample.id, popup_id: Popup.all.sample.id)
  p.save
end
