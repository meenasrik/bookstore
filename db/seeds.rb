# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#*************************************************************
User.destroy_all
Book.destroy_all

# Create admin user explicitly
User.create({
  name: "Meena Admin",
  email: "meena@ccs.com",
  password: "meenapwd",
  admin: true
})

# Create users who are author-users and normal-users explicitly to know passwords
User.create([{
  name: "Kara Author",
  email: "kara@ccs.com",
  password: "karapwd",
  author: true
}, 
{
  name: "Mason Author",
  email: "mason@ccs.com",
  password: "masonpwd",
  author: true
},
{
  name: "Kate User",
  email: "kate@ccs.com",
  password: "katepwd"
},
{
  name: "Emma User",
  email: "emma@ccs.com",
  password: "emmapwd",
}])

10.times do
  User.create({
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(6,8),
    author: true
  })
end

30.times do
  Book.create({
    title: Faker::Book.title,
    price: rand(5..19),
    content: Faker::Lorem.sentence(3, true, 4),
    author: User.where(author: true).sample
  })
end
