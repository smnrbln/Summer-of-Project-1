# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: "ogrenci", password: "123", type: "Ogrenci",
	    password_confirmation: "123", role: "ogrenci")
User.create(username: "as", password: "123", type: "Ogrenci",
	    password_confirmation: "123", role: "ogrenci")
User.create(username: "admin", password: "secret", type: "Admin",
	    password_confirmation: "secret", role: "admin")
User.create(username: "ali", password: "123", type: "Hoca",
	    password_confirmation: "123", role: "hoca")
User.create(username: "fatih", password: "123", type: "Hoca",
	    password_confirmation: "123", role: "hoca")
