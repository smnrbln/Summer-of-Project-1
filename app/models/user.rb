class User < ActiveRecord::Base
  # attr_accessible :title, :body
   
  has_secure_password

  attr_accessible :username, :ad, :soyad, :email, :telno, :okulno, :password, :password_confirmation, :role , :type , :group_id

  ROLES = %w[Ogrenci gyonetici Hoca Admin]

  def role?(base_role)
     ROLES.index(base_role.to_s) <= ROLES.index(role)
  end
end
