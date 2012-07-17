
#Ogrenci
User.create(username: "mumin", password: "123", type: "Ogrenci" ,
	    password_confirmation: "123", role: "ogrenci")

User.create(username: "omer", password: "123", type: "Ogrenci" ,
	    password_confirmation: "123", role: "ogrenci")

#gyonetici
User.create(username: "cehars", password: "456", type: "Gyonetici" ,
	    password_confirmation:"456", role: "gyonetici")


#Hoca 
User.create(username: "nsenyer", password: "author", type: "Hoca" ,
	    password_confirmation: "author", role: "hoca")

User.create(username: "onurbaran", password: "author", type: "Hoca" ,
	    password_confirmation: "author", role: "hoca")

#Admin
User.create(username: "ali", password: "secret", type: "Admin" ,
	    password_confirmation:  "secret", role:"admin")

User.create(username: "ftastemur", password:  "secret", type: "Admin" ,
	    password_confirmation: "secret", role:  "admin")
