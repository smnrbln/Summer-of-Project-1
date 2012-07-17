class Group < ActiveRecord::Base
  attr_accessible :name, :proje_id
  has_many :user
  has_one :proje
end
