# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |n|
	puts "[DEBUG] creating user #{n+1} of 10"
	name = Faker::Name.name
	description = Faker::Hipster.paragraph
	email = "user-#{n+1}@example.com"
	password = "password"
	User.create!(name: name, email: email,
		description: description,
		password: password,
		password_confirmation: password)
end