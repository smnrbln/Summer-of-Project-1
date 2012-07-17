class Proje < ActiveRecord::Base
  attr_accessible :title, :content, :group_id
  has_one :group
  belongs_to :user
end
