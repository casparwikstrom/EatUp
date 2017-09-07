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
  {
    first_name: "Lars",
    last_name: "Böhm",
    email: "larsböhm@gmail.com",
    password: "123456",
    password_confirmation: "123456"
  },
  {
    first_name: "Daniel",
    last_name: "Huertas",
    email: "danielhuertas@gmail.com",
    password: "123456",
    password_confirmation: "123456"
  },
  {
    first_name: "Nhung",
    last_name: "Nguyen",
    email: "nhungnguyen@gmail.com",
    password: "123456",
    password_confirmation: "123456"
  },
  {
    first_name: "Philipp",
    last_name: "von Hammerstein",
    email: "philippvonhammerstein@gmail.com",
    password: "123456",
    password_confirmation: "123456"
  },
  {
    first_name: "Will",
    last_name: "Chen",
    email: "willchen@gmail.com",
    password: "123456",
    password_confirmation: "123456"
  },
  {
    first_name: "Caspar",
    last_name: "Wikstrom",
    email: "casparwikstrom  @gmail.com",
    password: "123456",
    password_confirmation: "123456"
  },
]
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
User.find_by_first_name("Lars").photo_url = "https://kitt.lewagon.com/placeholder/users/datene"
User.find_by_first_name("Daniel").photo_url = "https://kitt.lewagon.com/placeholder/users/daniel-huertas"
User.find_by_first_name("Nhung").photo_url = "https://kitt.lewagon.com/placeholder/users/nhxng"
User.find_by_first_name("Philipp").photo_url = "https://kitt.lewagon.com/placeholder/users/philippvH1"
User.find_by_first_name("Will").photo_url = "https://kitt.lewagon.com/placeholder/users/will30303"
User.find_by_first_name("Caspar").photo_url = "https://kitt.lewagon.com/placeholder/users/casparwikstrom"


popups = [
  {
    user: User.find_by_first_name("Boris"),
    title: "Friggin Good Fench Fries",
    funding_goal: 4900,
    amount_pledged: 4482,
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
    funding_goal: 9000,
    amount_pledged: 8374,
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
    funding_goal: 23000,
    amount_pledged: 10299,
    deadline: Faker::Date.forward(23),
    price: Faker::Number.number(2),
    status: 'pending',
    description: "Ugo, the owner of Jardin St James, has been crying out for a real French baguette for more than eight years. Now, he's doing something about it by bringing simple, fresh baguettes to Berlin via a pop-up. The menu includes le pêcheur, a crusty baguette stuffed with tuna, mayonnaise, tomatoes and lettuce. There's also the la raclette with ham, potatoes, cornichons and finished off with a generous helping of Dijon mustard.",
    seat_capacity: Faker::Number.number(3)
  },
  {
    user: User.find_by_first_name("Sey"),
    title: "Funk Seoul Sister",
    funding_goal: 38475,
    amount_pledged: 19283,
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
    funding_goal: 37000,
    amount_pledged: 19288,
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
    funding_goal: 45000,
    amount_pledged: 23095,
    deadline: Faker::Date.forward(23),
    price: Faker::Number.number(2),
    status: 'pending',
    address: "berlin",
    description: "I'm a self-pronounced 'burger bro' - I value gourmet burgers. I Instagram every patty that comes my way. My self-worth is dependent on knowing where the best burgers are and right now, I can't find any in Berlin. I'm here to give you a spot-on burger recommendation at a moment's notice - and that's going to be at my next popup. Years of experience downing burgers means I have the expertise to deliver amazing taste only a quality burger can deliver. Support my popup, and you too can be a burger connoissuer.",
    seat_capacity: Faker::Number.number(3),
  },
  {
  user: User.find_by_first_name("Lars"),
  title: "Tosti For Days",
  funding_goal: 50000,
  amount_pledged: 23345,
  deadline: Faker::Date.forward(23),
  price: Faker::Number.number(2),
  status: 'pending',
  address: "berlin",
  description: "My cheesy start-up idea began life as a street food stall devoted to grilled cheese sandwiches; better known as a sophisticated cheese tosti. I've gone through quite an extensive cheese research and have tried all types of cheesy bits and bobs to fit my perfect sandwich. After 40 times of trial and error, I've perfected the perfect tosti, which includes an extravagent three-cheese mix. Trying this tosti will utterly change your life. Help my grilled cheese tosti come to life by supporting my popup!",
  seat_capacity: Faker::Number.number(3),
  },
  {
  user: User.find_by_first_name("Daniel"),
  title: "Top My Tapas",
  funding_goal: 43000,
  amount_pledged: 39495,
  deadline: Faker::Date.forward(23),
  price: Faker::Number.number(2),
  status: 'pending',
  address: "berlin",
  description: "I want to bring real Spain to your Belrin doorsteps. My tapas menu will focus on the dishes and delicacies of Spain, ranging from smaller snacks like grilled sardines and assorted cheeses to larger entrées like paella, chicken roulade, and whole-roasted fish. Tapas are meant to share, to bring people together around the table, to evoke the old tradition of family-style dining. Supporting my popup is supporting a social occasion and the making of happy memories.",
  seat_capacity: Faker::Number.number(3),
  },
  {
  user: User.find_by_first_name("Nhung"),
  title: "Not Your Momma's Bun",
  funding_goal: 55000,
  amount_pledged: 41327,
  deadline: Faker::Date.forward(23),
  price: Faker::Number.number(2),
  status: 'pending',
  address: "berlin",
  description: "Most people know Beef Pho and Chicken Pho. But I bet you've never had my bun rieu. But what exactly is Bun Rieu? Mine is an amazing broth that has pillowy pieces of crab meatballs floating up top along with melt in your mouth tomato chunks. It’s one of the best comfort foods you’ll ever taste. The crab meatballs is straight protein with no carbs in it. It’s just crab meat, pork, eggs, prawns, and scallops. Are you drooling yet?",
  seat_capacity: Faker::Number.number(3),
  },
  {
  user: User.find_by_first_name("Philipp"),
  title: "Phucking Good Eisbein",
  funding_goal: 38000,
  amount_pledged: 7492,
  deadline: Faker::Date.forward(23),
  price: Faker::Number.number(2),
  status: 'pending',
  address: "berlin",
  description: "You may not know, but eisbein, or boiled and cured pork knuckle, is surprisingly hard to find in Berlin. My process starts in the morning by brining the meat with pink curing salt, (without it, the hock would be more opaque than pink), which pickles and concentrates flavour. The knuckles are then boiled for two-and-a-half hours with pork fat, blueberries and a secret blend of spices. Carrots, parsley and celery are added to the broth for depth. The hock is served on a bed of sauerkraut with the pea purée. Try it by supporting my popup!",
  seat_capacity: Faker::Number.number(3),
  },
  {
  user: User.find_by_first_name("Will"),
  title: "Going Whole Cow",
  funding_goal: 32000,
  amount_pledged: 16048,
  deadline: Faker::Date.forward(23),
  price: Faker::Number.number(2),
  status: 'pending',
  address: "berlin",
  description: "Beef noodle soup is chicken soup for your soul. My authentic Chinese and Taiwanese fare remains very approachable to all comers (even to picky Germans!), no matter their comfort level. I marinate my specialty overnight in my famous special combination of spices and soy-sauce-based liquid. My soup takes eight hours or more to taste great. You won't find any better. Support my popup dream and have the best bowl of noodle soup in your life!",
  seat_capacity: Faker::Number.number(3),
  },
  {
  user: User.find_by_first_name("Caspar"),
  title: "For the Love of Swedish Meatballs",
  funding_goal: 18000,
  amount_pledged: 2039,
  deadline: Faker::Date.forward(23),
  price: Faker::Number.number(2),
  status: 'pending',
  address: "berlin",
  description: "Love IKEA's Swedish meatballs, but don't want to journey through a maze of build-it-yourself furniture? Well, you're in luck! My family recipe for these delicious bites of goodness is a recipe that has been passed down from generation to generation. I want to show all of Berlin just what Swedish cuisine can be like! Hope you will support my popup!",
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
Popup.find_by_title("Tosti For Days").photo_urls = [
  'https://cdn.eyeem.com/thumb/f762d6e71444760d994c7fee44fc3d83e0c0cb09-1471722960481/1600/1600',
  'https://cdn.eyeem.com/thumb/f762d6e71444760d994c7fee44fc3d83e0c0cb09-1471722960481/w/700'
  ]
Popup.find_by_title("Top My Tapas").photo_urls = [
  'https://cdn.eyeem.com/thumb/100f374abc6bc169be753f38c0460b744e536ea8e-1488308426744/1600/1600',
  'https://cdn.eyeem.com/thumb/99f374abc6bc169be753f38c0460b744e536ea8e-1488308426744/w/750'
  ]
Popup.find_by_title("Not Your Momma's Bun").photo_urls = [
  'https://cdn.eyeem.com/thumb/57c8e579c969d36d03dfe56d30674dc6f824159e-1453823694807/1600/1600',
  'https://cdn.eyeem.com/thumb/57c8e579c969d36d03dfe56d30674dc6f824159e-1453823694807/w/850'
  ]
Popup.find_by_title("Phucking Good Eisbein").photo_urls = [
  'https://cdn.eyeem.com/thumb/017b7cd4e807f033e842c4369c2987156103761d-1451825487257/1600/1600',
  'https://cdn.eyeem.com/thumb/017b7cd4e807f033e842c4369c2987156103761d-1451825487257/w/600'
  ]
Popup.find_by_title("Going Whole Cow").photo_urls = [
  'https://cdn.eyeem.com/thumb/662f1766b29ae883dc63a4167efbf883a9e4f922-1435391991/1600/1600',
  'https://cdn.eyeem.com/thumb/662f1766b29ae883dc63a4167efbf883a9e4f922-1435391991/w/850'
  ]
Popup.find_by_title("Going Whole Cow").photo_urls = [
  'https://cdn.eyeem.com/thumb/69922aad37134932ac3a1db51c45ccc4c78c5436-1470019808132/1600/1600',
  'https://cdn.eyeem.com/thumb/69922aad37134932ac3a1db51c45ccc4c78c5436-1470019808132/w/900'
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
