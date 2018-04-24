# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
	user = User.create(name: Faker::Name.unique.name)	
end

30.times do
	x = rand (1..10)
	u = User.find(x)
	article = Article.create(users_id: u.id, name: "#{Faker::Company.catch_phrase}", body: "#{Faker::Dessert.flavor}", description: "#{Faker::Dessert.variety}")
end

50.times do
	categorie = Categorie.create(name: "#{Faker::Currency.name}")
end