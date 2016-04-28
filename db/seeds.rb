# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.where(name: "Cafe").first_or_create(name: "Cafe")
Category.where(name: "Library").first_or_create(name: "Library")
Category.where(name: "Bookstore").first_or_create(name: "Bookstore")
Category.where(name: "Hotel").first_or_create(name: "Hotel")