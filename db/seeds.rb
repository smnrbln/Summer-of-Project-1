# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(:username => "hasan", :password => "123",
	    :password_confirmation => "123", :role => "Student")
User.create(:username => "omer", :password => "123",
	    :password_confirmation => "123", :role => "Student")
User.create(:username => "nsenyer", :password => "hoca",
	    :password_confirmation => "hoca", :role => "Author")
User.create(:username => "ali", :password => "secret",
	    :password_confirmation => "secret", :role => "Admin")
User.create(:username => "fatih", :password => "secret",
	    :password_confirmation => "secret", :role => "Admin")
