# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

richard = User.create(nickname: "Richard", birthday: DateTime.new(1981,03,11), height: 180, email: "richard@wcs.fr", password: "12345678")
melanie = User.create(nickname: "Mélanie", birthday: DateTime.new(1992,12,07), height: 180, email: "melanie@wcs.fr", password: "12345678")
benjamin = User.create(nickname: "Benjamin", birthday: DateTime.new(1989,01,24), height: 180, email: "benjamin@wcs.fr", password: "12345678")
valentin = User.create(nickname: "Valentin", birthday: DateTime.new(1981,03,11), height: 180, email: "valentin@wcs.fr", password: "12345678")
suzy = User.create(nickname: "Suzy", birthday: DateTime.new(1981,03,11), height: 180, email: "suzy@wcs.fr", password: "12345678")
