# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Type.destroy_all

user = User.create(email: 'test@gmail.com', password: '123456', password_confirmation: '123456')

5.times do

 fakeuser = User.create(
  email: Faker::Internet.free_email,
  password: "123456",
  password_confirmation: "123456",
  )

 2.times do
   popup = Popup.new(
    user_id: User.last.id,
    title: Faker::App.name,
    funding_goal: Faker::Number.number(6),
    amount_pledged: Faker::Number.number(4),
    deadline: Faker::Date.forward(23),
    price: Faker::Number.number(2),
    seat_capacity: Faker::Number.number(3),
    description: Faker::Lorem.paragraph,
    )
   popup.save
 end
end

category = [
  { name: 'American'},
  { name: 'Argentinian'},
  { name: 'Austrian'},
  { name: 'Brazilian'},
  { name: 'British'},
  { name: 'Cambodian'},
  { name: 'Canadian'},
  { name: 'Caribbean'},
  { name: 'Chilean'},
  { name: 'Chinese'},
  { name: 'Colombian'},
  { name: 'Ethiopian'},
  { name: 'French'},
  { name: 'Georgian'},
  { name: 'German'},
  { name: 'Greek'},
  { name: 'Hungarian'},
  { name: 'Indian'},
  { name: 'Indonesian'},
  { name: 'Israeli'},
  { name: 'Italian'},
  { name: 'Japanese '},
  { name: 'Korean'},
  { name: 'Lebanese'},
  { name: 'Mediterranean'},
  { name: 'Mexican'},
  { name: 'Middle-Eastern'},
  { name: 'Moroccan'},
  { name: 'Peruvian'},
  { name: 'Portuguese'},
  { name: 'Russian'},
  { name: 'Scandinavian'},
  { name: 'Spanish'},
  { name: 'Swiss'},
  { name: 'Thai'},
  { name: 'Vietnamese'},
  { name: 'Noodles'},
  { name: 'BBQ'},
  { name: 'Snack'},
  { name: 'Brunch'},
  { name: 'Healthy'},
  { name: 'Ice Cream'},
  { name: 'Pastry'},
  { name: 'Bread'},
  { name: 'Juice'},
  { name: 'Beer'},
  { name: 'Tea'},
  { name: 'Fusion'},
  { name: 'Dimsum'},
  { name: 'Steak'},
  { name: 'Ramen'},
  { name: 'Dessert'},
  { name: 'Cocktails'},
  { name: 'Sushi'},
  { name: 'Vegan'},
  { name: 'Vegetarian'},
  { name: 'Seafood'},
  { name: 'Soup'},
  { name: 'Cafe'},
  { name: 'Burger'},
  { name: 'Tapas'},
  { name: 'Pizza'},
  { name: 'Tacos'},
  { name: 'Salad'},
  { name: 'Fish'},
  { name: 'Wine'},
  { name: 'Pasta'},
  { name: 'Burrito'},
]

category.each do |c|
  Type.create(c)
end

70.times do
  p = Popuptype.new(type_id: Type.all.sample.id, popup_id: Popup.all.sample.id)
  p.save
end
