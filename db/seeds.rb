
#Ogrenci
User.create(:username => "hasan", :password => "123",
	    :password_confirmation => "123", :role => "Ogrenci")
User.create(:username => "omer", :password => "123",
	    :password_confirmation => "123", :role => "Ogrenci")

#Hoca 
User.create(:username => "nsenyer", :password => "author",
	    :password_confirmation => "author", :role => "Hoca")
User.create(:username => "onurbaran", :password => "author",
	    :password_confirmation => "author", :role => "Hoca")

#Admin
User.create(:username => "ali", :password => "secret",
	    :password_confirmation => "secret", :role => "Admin")
User.create(:username => "ftastemur", :password => "secret",
	    :password_confirmation => "secret", :role => "Admin")
