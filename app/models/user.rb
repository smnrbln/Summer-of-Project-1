class User < ActiveRecord::Base
  # attr_accessible :title, :body
  has_secure_password

  attr_accessible :username, :name, :surname, :email, :phone, :snumber, :password, :password_confirmation, :role

  ROLES = %w[Student Author Admin]

  def role?(base_role)
     ROLES.index(base_role.to_s) <= ROLES.index(role)
  end
  
end
