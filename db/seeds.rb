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
    title: "Authentic French Fries",
    funding_goal: Faker::Number.number(6),
    amount_pledged: Faker::Number.number(6),
    deadline: Faker::Date.forward(23),
    price: Faker::Number.number(2),
    status: 'pending',
    description: "I'm French and I can't find good french fries in Berlin. I will make my secret family recipe for french fries and show you Germans how it's done!",
    seat_capacity: Faker::Number.number(3)
  },
  {
    user: User.find_by_first_name("Alice"),
    title: "Authentic Macarons",
    funding_goal: Faker::Number.number(6),
    amount_pledged: Faker::Number.number(4),
    deadline: Faker::Date.forward(23),
    price: Faker::Number.number(2),
    status: 'pending',
    description: "I'm French and I can't find good macarons in Berlin. I will make my secret family recipe for macarons and show you Germans how it's done!",
    seat_capacity: Faker::Number.number(3)
  },
  {
    user: User.find_by_first_name("Ugo"),
    title: "Authentic Baguettes",
    funding_goal: Faker::Number.number(6),
    amount_pledged: Faker::Number.number(5),
    deadline: Faker::Date.forward(23),
    price: Faker::Number.number(2),
    status: 'pending',
    description: "I'm French and I can't find good baguettes in Berlin. I will make my secret family recipe for baguettes and show you Germans how it's done!",
    seat_capacity: Faker::Number.number(3)
  },
  {
    user: User.find_by_first_name("Sey"),
    title: "Authentic Bi Bim Bap",
    funding_goal: Faker::Number.number(6),
    amount_pledged: Faker::Number.number(4),
    deadline: Faker::Date.forward(23),
    price: Faker::Number.number(2),
    status: 'pending',
    description: "I'm Korean and I can't find good Bi Bim Bap in Berlin. I will make my secret family recipe for Bi Bim Bap and show you Germans how it's done!",
    seat_capacity: Faker::Number.number(3)
  },
  {
    user: User.find_by_first_name("Maren"),
    title: "Authentic Schnitzel",
    funding_goal: Faker::Number.number(6),
    amount_pledged: Faker::Number.number(5),
    deadline: Faker::Date.forward(23),
    price: Faker::Number.number(2),
    status: 'pending',
    description: "I'm German and I can't find good Schnitzel in Berlin. I will make my secret family recipe for Schnitzel and show you Frenchies how it's done!",
    seat_capacity: Faker::Number.number(3)
  },
  {
    user: User.find_by_first_name("John"),
    title: "Authentic Burgers",
    funding_goal: Faker::Number.number(6),
    amount_pledged: Faker::Number.number(5),
    deadline: Faker::Date.forward(23),
    price: Faker::Number.number(2),
    status: 'pending',
    description: "I'm American and I can't find good burgers in Berlin. I will make my secret family recipe for burgers and show you Germans how it's done!",
    seat_capacity: Faker::Number.number(3),
  },
]

popups.each do |popup_attributes|
  Popup.create(popup_attributes)
end


Popup.find_by_title("Authentic French Fries").photo_urls = [
  'https://cdn.eyeem.com/thumb/b19faf4b8314865df63178c4e07a708a4b39c7d5-1473234719053/w/900',
  'https://cdn.eyeem.com/thumb/8a76bd931bb961644aa4ff34c2f3e0a404df75ad-1454098315248/w/900'
  ]
Popup.find_by_title("Authentic Macarons").photo_urls = [
  'https://cdn.eyeem.com/thumb/19b746c54f3bf458a629f60d5521d68cd1caf8e8-1461089298534/w/950',
  'https://cdn.eyeem.com/thumb/c071c4b94e719d18d64fa03c3b952262be52a3ef-1478033751939/1800/1800'
  ]
Popup.find_by_title("Authentic Baguettes").photo_urls = [
  'https://cdn.eyeem.com/thumb/4816794ecd318058b80d096987ec1ac736f44a11-1465922254665/w/750',
  'https://cdn.eyeem.com/thumb/90f753bb2f6f3de43b24b552d46eac06ca38efc4-1489237406658/w/850'
  ]
Popup.find_by_title("Authentic Bi Bim Bap").photo_urls = [
  'https://cdn.eyeem.com/thumb/9207dc9e581fe6fb043fc8eef93a38114788a7b5-1424801060/w/900',
  'https://cdn.eyeem.com/thumb/c3ce6214cd18375d168770677f716cb1fe7939bb-1431084323/1280/1280?watermark=false'
  ]
Popup.find_by_title("Authentic Schnitzel").photo_urls = [
  'https://cdn.eyeem.com/thumb/d177db518766a730bc64973c91a50c38a4e74e1d-1403391490/w/800',
  'https://cdn.eyeem.com/thumb/444c5ae6f60a6ada708d69c1e4735eedac53657e-1472039948526/1800/1800'
  ]
Popup.find_by_title("Authentic Burgers").photo_urls = [
  'https://cdn.eyeem.com/thumb/9bddc0155e7622363d95c0f4070b69103112d0e9-1487522265564/1800/1800',
  'https://cdn.eyeem.com/thumb/dcf86ce0b6df2446cd1d68df1e72dc685895102d-1468933807802/w/700'
  ]


# NEEDS TO BE FIXED
# popup1 = Popup.find_by_title("Authentic French Fries")
# popup1.orders.ordered_seats = Faker::Number.number(2)
# popup1.save





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
  { name: 'British'},
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
  { name: 'BBQ'},
  { name: 'Seafood'},
  { name: 'Burgers'},
  { name: 'Tapas'},
  { name: 'Pizza'},
  { name: 'Tacos'},
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
