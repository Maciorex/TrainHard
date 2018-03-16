# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = %w(macio basia seba mati brajan szefu lysy adik jan janusz)

users.each_with_index do |user, index|
  User.create(password: "password", email: "#{user}@email.com")
end

user1 = User.first
user1.admin = true
