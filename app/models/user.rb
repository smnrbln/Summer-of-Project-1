class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :username, :ad, :soyad, :email, :tel, :okulno, :password, :password_confirmation, :role, :type, :group_id

  ROLES = %w[ogrenci gyonetici hoca admin]

  def role?(base_role)
     ROLES.index(base_role.to_s) <= ROLES.index(role)
  end
end
