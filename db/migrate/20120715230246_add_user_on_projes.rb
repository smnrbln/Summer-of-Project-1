class AddUserOnProjes < ActiveRecord::Migration
  def change
   add_column :projes, :user_id, :integer
  end
end
